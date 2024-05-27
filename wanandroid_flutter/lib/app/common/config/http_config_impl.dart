import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod/src/framework.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:wanandroid_flutter/app/app.dart';


import '../../../lib.dart';

class HttpConfigImpl implements IHttpConfig {
  @override
  OtherError getDioError(Object obj) {
    if (obj.runtimeType == DioException) {
      if ((obj as DioException).type == DioExceptionType.badResponse) {
        final response = obj.response;
        if (response?.statusCode == -1001) {
          return OtherError(
            statusCode: response?.statusCode ?? kUnAuthorizedStatusCode,
            statusMessage: response?.statusMessage ?? '未知错误',
          );
        } else {
          return OtherError(
            statusCode: response?.statusCode ?? kUnknownStatusCode,
            statusMessage: response?.statusMessage ?? '未知错误',
          );
        }
      } else if (obj.type == DioExceptionType.connectionTimeout ||
          obj.type == DioExceptionType.sendTimeout ||
          obj.type == DioExceptionType.receiveTimeout) {
        return OtherError(
          statusCode: kTimeoutStatusCode,
          statusMessage: '请求超时',
        );
      } else if (obj.type == DioExceptionType.cancel) {
        return OtherError(
          statusCode: kCancelRequestStatusCode,
          statusMessage: '请求被取消',
        );
      } else {
        return OtherError(
          statusCode: kUnknownStatusCode,
          statusMessage: '未知错误',
        );
      }
    }

    return OtherError(
      statusCode: kUnknownStatusCode,
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
    interceptors.add(NetWorkInterceptor(ref: ref));
    interceptors.add(ErrorInterceptor(ref: ref));
    return interceptors;

  }

}
