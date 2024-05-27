import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../core.dart';

class BaseDio {
  BaseDio._();

  static BaseDio? _instance;

  static BaseDio getInstance() {
    _instance ??= BaseDio._();

    return _instance!;
  }

  Dio getDio({required Ref ref}) {
    final Dio dio = Dio();
    dio.options = BaseOptions(
        receiveTimeout: const Duration(milliseconds: 66000),
        connectTimeout: const Duration(milliseconds: 66000)); // 设置超时时间等 ...

    dio.interceptors.addAll(BaseLibs.httpConfig.getInterceptors(ref));

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
  OtherError getDioError(Object obj) {
    return BaseLibs.httpConfig.getDioError(obj);
  }
}
