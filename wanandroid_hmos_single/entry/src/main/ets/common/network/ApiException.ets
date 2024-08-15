import { NetManager } from './NetManager';

export class ApiException extends Error {
  errorCode: number = NetManager.errorCode;
  errorMsg: string | Resource = '';

  constructor(code: number, msg: string | Resource) {
    super();
    this.errorCode = code;
    this.errorMsg = msg;
  }
}

export class ApiErrorCode {
  // 普通错误code
  static error_code = NetManager.errorCode
  // token过期 需要登录code
  static need_login = -1001
}