import axios, { AxiosInstance, AxiosResponse, InternalAxiosRequestConfig } from '@ohos/axios';
import { LogUtil } from '@pura/harmony-utils';
import { CommonType } from '../utils/typealias/TypeAlias';
import { errorHandler } from './AxiosRequest';

export interface BaseResponse {
  // 请求是否成功
  isSuccess(): boolean

  // 授权失败
  isAuthError(): boolean

  // 错误信息
  getErrorMsg(): string

}

/**
 * 封装后, 不支持传入拦截器
 * 需要自己定义接口继承AxiosRequestConfig类型
 * 从而支持传入拦截器, 但拦截器选项应为可选属性
 * 之后请求实例传入的options为继承AxiosRequestConfig的自定义类型
 */
interface InterceptorHooks {
  requestInterceptor?: (config: HttpRequestConfig) => Promise<HttpRequestConfig>;
  requestInterceptorCatch?: (error: CommonType) => CommonType;
  responseInterceptor?: (response: AxiosResponse<BaseResponse>) => AxiosResponse<BaseResponse> | Promise<AxiosResponse<BaseResponse>>;
  responseInterceptorCatch?: (error: CommonType) => CommonType;
}

//这里主要是高版本的axios中设置拦截器的时候里面的Config属性必须是InternalAxiosRequestConfig，但是InternalAxiosRequestConfig里面的headers是必传，所以在实现的子类我设置成非必传会报错，加了个忽略注解
export interface HttpRequestConfig extends InternalAxiosRequestConfig {
  showLoading?: boolean; //是否展示请求loading
  checkResultCode?: boolean; //是否检验响应结果码
  checkLoginState?: boolean //校验用户登陆状态
  needJumpToLogin?: boolean //是否需要跳转到登陆页面
  interceptorHooks?: InterceptorHooks
}

/**
 * 网络请求构造
 * 基于axios框架实现
 */
export class AxiosHttpRequest {
  config: HttpRequestConfig;
  interceptorHooks?: InterceptorHooks;
  instance: AxiosInstance;

  constructor(options: HttpRequestConfig) {
    this.config = options
    this.interceptorHooks = options.interceptorHooks
    this.instance = axios.create(options)
    this.setupInterceptor()
  }

  setupInterceptor(): void {
    this.instance.interceptors.request.use(
      //这里主要是高版本的axios中设置拦截器的时候里面的Config属性必须是InternalAxiosRequestConfig，但是InternalAxiosRequestConfig里面的headers是必传，所以在实现的子类我设置成非必传会报错，加了个忽略注解
      this.interceptorHooks?.requestInterceptor,
      this.interceptorHooks?.requestInterceptorCatch,
    )
    this.instance.interceptors.response.use(
      this.interceptorHooks?.responseInterceptor,
      this.interceptorHooks?.responseInterceptorCatch,
    )
  }

  // 类型参数的作用, T决定AxiosResponse实例中data的类型
  request<T = CommonType>(config: HttpRequestConfig): Promise<T> {
    return new Promise<T>((resolve, reject) => {
      this.instance
        .request<CommonType, T>(config)
        .then(res => {
          resolve(res)
        })
        .catch((err: CommonType) => {
          LogUtil.error("网络请求Request异常: ", err.toString())
          errorHandler(err)
          if (err) {
            reject(err)
          }
        })
    })
  }

  get<T = CommonType>(config: HttpRequestConfig): Promise<T> {
    config.method = 'GET'
    return this.request(config)
  }

  post<T = CommonType>(config: HttpRequestConfig): Promise<T> {
    config.method = 'POST'
    return this.request(config);
  }

  delete<T = CommonType>(config: HttpRequestConfig): Promise<T> {
    config.method = 'DELETE'
    return this.request(config);
  }

  patch<T = CommonType>(config: HttpRequestConfig): Promise<T> {
    config.method = 'PATCH'
    return this.request(config);
  }
}