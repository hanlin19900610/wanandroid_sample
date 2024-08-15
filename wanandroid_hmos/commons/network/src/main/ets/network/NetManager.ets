/**
 * 网络请求配置
 */
import { CommonType } from '@ohos/utils';

type ErrorHandler = (error: CommonType) => null;
type ResultHandler = (res: CommonType) => boolean

export class NetManager {
  // 接口请求基础地址
  static baseUrl = '';
  // 请求成功code
  static successCode = 1;
  // 请求失败Code
  static errorCode = 0;
  // 错误回调处理
  static errorHandler: ErrorHandler;
  // 结果处理, 返回结果是否成功
  static resultHandler: ResultHandler;

  static init(
    baseUrl: string,
    successCode: number = 1,
    errorCode: number = 0,
    errorHandler: ErrorHandler,
    resultHandler: ResultHandler,
  ) {
    NetManager.baseUrl = baseUrl;
    NetManager.successCode = successCode;
    NetManager.errorCode = errorCode;
    NetManager.errorHandler = errorHandler;
    NetManager.resultHandler = resultHandler;
  }
}