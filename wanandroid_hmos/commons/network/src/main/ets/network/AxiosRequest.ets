import { AxiosRequestHeaders, AxiosResponse } from '@ohos/axios';
import { CommonType, JsonUtils, LogUtil, MMKVUtils, ToastUtil, ZRouter } from '@ohos/utils';
import { AxiosHttpRequest, HttpRequestConfig } from './AxiosHttp';
import { NetManager } from './NetManager';
import { hideLoadingDialog, showLoadingDialog } from '../utils/DialogUtils';
import { CacheKeys } from '../constants/CacheKeys';

/**
 * axios请求客户端创建
 */
export const axiosClient = new AxiosHttpRequest({
  baseURL: '/api',
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
        showLoadingDialog("加载中...")
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
          throw new Error('请登录')
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
    responseInterceptor: (response: AxiosResponse) => {
      // 优先执行自己的请求响应拦截器, 在执行通用请求request的
      if (axiosClient.config.showLoading) {
        hideLoadingDialog()
      }
      LogUtil.debug("网络请求响应Response:", `\n${JsonUtils.stringify(response.data)}}`)
      if (response.status === 200) {
        let config = response.config as HttpRequestConfig
        const checkResultCode = config.checkResultCode
        if (checkResultCode && !NetManager.resultHandler(response.data)) {
          ToastUtil.showToast(response.data.errorMsg)
          return Promise.reject(response)
        }
        return Promise.resolve(response.data)
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