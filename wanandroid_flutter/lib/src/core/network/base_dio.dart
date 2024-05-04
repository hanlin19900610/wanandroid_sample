import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../api/api_client.dart';
import 'base_error.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'network_interceptor.dart';

class BaseDio {
  BaseDio._();

  static BaseDio? _instance;

  static BaseDio getInstance() {
    _instance ??= BaseDio._();

    return _instance!;
  }

  late final PersistCookieJar cookieJar;
  late final CookieManager cookieManager;

  Dio getDio({required Ref ref}) {
    final Dio dio = Dio();
    dio.options = BaseOptions(
        receiveTimeout: const Duration(milliseconds: 66000),
        connectTimeout: const Duration(milliseconds: 66000)); // 设置超时时间等 ...
    if (!kIsWeb) {
      cookieJar = ref.read(appCookieJarProvider);

      cookieManager = CookieManager(cookieJar);

      dio.interceptors.add(cookieManager);
    }
    dio.interceptors.add(NetworkInterceptor()); // 添加拦截器，如 token之类，需要全局使用的参数
    dio.interceptors.add(PrettyDioLogger(
      // 添加日志格式化工具类
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));

    return dio;
  }

  /// 这里封装了一个 BaseError 类，会根据后端返回的code返回不同的错误类
  BaseError getDioError(Object obj) {
    switch (obj.runtimeType) {
      case DioException _:
        if ((obj as DioException).type == DioExceptionType.badResponse) {
          final response = obj.response;
          if (response?.statusCode == 401) {
            return NeedLogin();
          } else if (response?.statusCode == 403) {
            return NeedAuth();
          } else if (response?.statusCode == 408) {
            return UserNotExist();
          } else if (response?.statusCode == 409) {
            return PwdNotMatch();
          } else if (response?.statusCode == 405) {
            return UserNameEmpty();
          } else if (response?.statusCode == 406) {
            return PwdEmpty();
          } else {
            return OtherError(
              statusCode: response?.statusCode ?? 0,
              statusMessage: response?.statusMessage ?? '未知错误',
            );
          }
        }
    }

    return OtherError(
      statusCode: 0,
      statusMessage: '未知错误',
    );
  }
}
