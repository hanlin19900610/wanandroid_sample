import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod/src/framework.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';


import '../../../lib.dart';

class HttpConfigImpl implements IHttpConfig {
  @override
  BaseError getDioError(Object obj) {
    if (obj.runtimeType == DioException) {
      if ((obj as DioException).type == DioExceptionType.badResponse) {
        final response = obj.response;
        if (response?.statusCode == -1001) {
          return NeedLogin();
        } else {
          return OtherError(
            statusCode: response?.statusCode ?? -1,
            statusMessage: response?.statusMessage ?? '未知错误',
          );
        }
      } else if (obj.type == DioExceptionType.connectionTimeout ||
          obj.type == DioExceptionType.sendTimeout ||
          obj.type == DioExceptionType.receiveTimeout) {
        return OtherError(
          statusCode: -1,
          statusMessage: '请求超时',
        );
      } else if (obj.type == DioExceptionType.cancel) {
        return OtherError(
          statusCode: -1,
          statusMessage: '请求被取消',
        );
      } else {
        return OtherError(
          statusCode: -1,
          statusMessage: '未知错误',
        );
      }
    }

    return OtherError(
      statusCode: -1,
      statusMessage: '未知错误',
    );
  }

  @override
  List<Interceptor> getInterceptors(Ref ref) {

    List<Interceptor> interceptors = [];
    if (!kIsWeb) {
      var cookieJar = ref.read(appCookieJarProvider);
      var cookieManager = CookieManager(cookieJar);
      interceptors.add(cookieManager);
    }

    return interceptors;

  }

}
