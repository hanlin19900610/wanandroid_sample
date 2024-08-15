import { AxiosRequestHeaders, AxiosResponse } from '@ohos/axios';
import { AxiosHttpRequest, BaseResponse, HttpRequestConfig } from './AxiosHttp';
import { NetManager } from './NetManager';
import { CacheKeys } from '../constants/CacheKeys';
import { LogUtil, ToastUtil } from '@pura/harmony-utils';
import { JsonUtils } from '../utils/JsonUtils';
import { hideLoadingDialog, showLoadingDialog } from '../utils/DialogUtils';
import { MMKVUtils } from '../utils/MMKVUtils';
import { ZRouter } from '@hzw/zrouter/src/main/ets/api/Router';
import { CommonType } from '../utils/typealias/TypeAlias';
import resourceManager from '@ohos.resourceManager';
import { OhosSmartDialog } from 'ohos_smart_dialog/src/main/ets/InitDialog';
import { SmartDialog } from 'ohos_smart_dialog';
import { ApiErrorCode, ApiException } from './ApiException';

/**
 * axios请求客户端创建
 */
export const axiosClient = new AxiosHttpRequest({
  baseURL: NetManager.baseUrl,
  timeout: 10 * 1000,
  checkResultCode: false,
  headers: {
    'Content-Type': 'application/json'
  } as AxiosRequestHeaders,
  interceptorHooks: {
    requestInterceptor: async (config) => {
      // 在发送请求之前做一些处理, 例如打印请求信息LogUtils.debug('网络请求Request 请求方法:', `${config.method}`);
      LogUtil.debug('网络请求Request 请求链接:', `${config.url}`);
      LogUtil.debug('网络请求Request Params:', `\n${JsonUtils.stringify(config.params)}`);
      LogUtil.debug('网络请求Request Data:', `${JsonUtils.stringify(config.data)}`);
      axiosClient.config.showLoading = config.showLoading
      if (config.showLoading) {
        showLoadingDialog($r('app.string.loading'))
      }
      if (config.checkLoginState) {
        let hasLogin = MMKVUtils.getBool(CacheKeys.USER_LOGIN, false)
        LogUtil.debug('网络请求Request 登录校验>>>', `${hasLogin}`)
        if (hasLogin) {
          return config
        } else {
          if (config.needJumpToLogin) {
            ZRouter.push('LoginPage')
          }
          throw new ApiException(ApiErrorCode.need_login, $r('app.string.to_login'))
        }
      }

      // 添加公共请求头
      if (NetManager.commonHeaders().size != 0) {
        for (let key of NetManager.commonHeaders().keys()) {
          axiosClient.config.headers[key] = NetManager.commonHeaders()[key];
        }
      }
      // 添加公共请求参数
      if (NetManager.commonParams().size != 0) {
        if (axiosClient.config.method == 'get') {
          axiosClient.config.params = axiosClient.config.params || {}
          for (let key of NetManager.commonParams().keys()) {
            axiosClient.config.params[key] = NetManager.commonParams()[key];
          }
        } else {
          axiosClient.config.data = axiosClient.config.data || {}
          for (let key of NetManager.commonParams().keys()) {
            axiosClient.config.data[key] = NetManager.commonParams()[key];
          }
        }
      }

      return config;
    },
    requestInterceptorCatch: (err) => {
      LogUtil.error("网络请求RequestError", err.toString())
      if (axiosClient.config.showLoading) {
        hideLoadingDialog()
      }
      return err;
    },
    responseInterceptor: (response: AxiosResponse<BaseResponse>) => {
      // 优先执行自己的请求响应拦截器, 在执行通用请求request的
      if (axiosClient.config.showLoading) {
        hideLoadingDialog()
      }
      LogUtil.debug("网络请求响应Response:", `\n${JsonUtils.stringify(response.data)}}`)
      if (response.status === 200) {
        let config = response.config as HttpRequestConfig
        const checkResultCode = config.checkResultCode
        if (checkResultCode && !response.data.isSuccess()) {
          ToastUtil.showToast(response.data.getErrorMsg())
          return Promise.reject(response)
        }
        return Promise.resolve(response)
      } else {
        return Promise.reject(response)
      }
    },
    responseInterceptorCatch: (error) => {
      if (axiosClient.config.showLoading) {
        hideLoadingDialog()
      }
      LogUtil.error("网络请求响应异常", error.toString())
      errorHandler(error)
      return Promise.reject(error)
    }
  }
})

export function errorHandler(error: CommonType) {
  // 把错误处理代理出去
  NetManager.errorHandler(error)
}