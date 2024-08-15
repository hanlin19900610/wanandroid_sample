import { BaseResponse } from '../../common/network/AxiosHttp';
import { CommonType } from '../../common/utils/typealias/TypeAlias';

export class ApiResponse<T = CommonType> implements BaseResponse {
  data: T | CommonType | null = null
  errorCode: number = 0
  errorMsg: string = ''

  isSuccess(): boolean {
    return this.errorCode == 0
  }

  isAuthError(): boolean {
    return this.errorCode == -1001
  }

  getErrorMsg(): string {
    return this.errorMsg
  }
}