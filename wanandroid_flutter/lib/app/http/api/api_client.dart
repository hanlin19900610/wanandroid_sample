import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/core.dart';

part 'api_client.g.dart';
part 'api_client.freezed.dart';

part 'api_url.dart';

@RestApi(baseUrl: ApiUrl.BASE_URL)
abstract class ApiClient {

  factory ApiClient({required Dio dio, String? baseUrl}) {
    return _ApiClient(dio, baseUrl: baseUrl);
  }

}

@Riverpod(keepAlive: true)
external Directory appTemporaryDirectory();

@Riverpod(keepAlive: true, dependencies: <Object>[appTemporaryDirectory])
class AppCookieJar extends _$AppCookieJar {
  @override
  PersistCookieJar build() {
    final Directory directory = ref.read(appTemporaryDirectoryProvider);

    final String path = '${directory.path}/cookie_jar';

    if (!Directory(path).existsSync()) {
      Directory(path).createSync();
    }

    return PersistCookieJar(
      storage: FileStorage(path),
      ignoreExpires: true,
    );
  }
}

@Riverpod(keepAlive: true)
class Network extends _$Network {

  @override
  ApiClient build() => ApiClient(dio: BaseDio.getInstance().getDio(ref: ref));

}

@freezed
class ResponseData with _$ResponseData {
  factory ResponseData({
    @Default(0) int code,
    String? message,
    dynamic data,
  }) = _ResponseData;
  const ResponseData._();
  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);

  bool get success => code == 0;
}
