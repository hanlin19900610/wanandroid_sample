import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:cookie_jar/cookie_jar.dart';

part 'api_client.g.dart';

part 'api_url.dart';

@RestApi(baseUrl: ApiUrl.BASE_URL)
abstract class ApiClient {

  factory ApiClient({required Dio dio, String? baseUrl}) {
    return _ApiClient(dio, baseUrl: baseUrl);
  }

}