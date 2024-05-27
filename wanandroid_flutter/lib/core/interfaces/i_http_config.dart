
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core.dart';

/// 网络请求的配置
abstract class IHttpConfig {
  /// 网络拦截器
  List<Interceptor> getInterceptors(Ref ref);

  /// 根据后端返回的code返回不同的错误类
  OtherError getDioError(Object obj);
}
