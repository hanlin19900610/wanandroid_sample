/**
 * 网络请求配置
 */
import { CommonType } from '../utils/typealias/TypeAlias';

type ErrorHandler = (error: CommonType) => void;
type CommonHeader = () => Map<string, object>;
type CommonParams = () => Map<string, object>;

interface NetConfig {
  baseUrl: string;
  successCode: number;
  errorCode: number;
  errorHandler: ErrorHandler;
  commonHeaders: CommonHeader;
  commonParams: CommonParams;
}

export class NetManager {
  // 接口请求基础地址
  static baseUrl = '';
  // 请求成功code
  static successCode = 1;
  // 请求失败Code
  static errorCode = 0;
  // 错误回调处理
  static errorHandler: ErrorHandler;
  // 公共header
  static commonHeaders: CommonHeader;
  // 公共参数
  static commonParams: CommonParams;

  static init(
    config: NetConfig
  ) {
    NetManager.baseUrl = config.baseUrl;
    NetManager.successCode = config.successCode;
    NetManager.errorCode = config.errorCode;
    NetManager.errorHandler = config.errorHandler;
    NetManager.commonHeaders = config.commonHeaders;
    NetManager.commonParams = config.commonParams;
  }
}