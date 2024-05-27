part of 'interceptors.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor({required this.ref});

  final Ref ref;

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final ResponseData responseData =
        ResponseData.fromJson(response.data as Map<String, dynamic>);

    if (responseData.success) {
      response.data = responseData.data;
      handler.next(response);
    } else {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          error: OtherError(
              statusCode: responseData.code,
              statusMessage: responseData.message ?? ''),
        ),
        true,
      );
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.isRedirect ??
        false ||
            err.response?.statusCode == HttpStatus.movedPermanently ||
            err.response?.statusCode == HttpStatus.movedTemporarily ||
            err.response?.statusCode == HttpStatus.seeOther ||
            err.response?.statusCode == HttpStatus.temporaryRedirect) {
      handler.next(DioException(
        requestOptions: err.requestOptions,
        error: OtherError(
            statusCode: err.response?.statusCode ?? kUnknownStatusCode,
            statusMessage: err.response?.statusMessage ?? ''),
      ));
    } else {
      LogUtils.e(
        'Error when requesting ${err.requestOptions.uri} '
        '${err.response?.statusCode}'
        ': ${err.response?.data}',
        withStackTrace: false,
      );
      handler.reject(DioException(
        requestOptions: err.requestOptions,
        error: OtherError(
            statusCode: err.response?.statusCode ?? kUnknownStatusCode,
            statusMessage: err.response?.statusMessage ?? ''),
      ));
    }
  }
}

const int kUnAuthorizedStatusCode = -1001;
const int kUnknownStatusCode = -1;
const int kNetworkExceptionStatusCode = -2;
const int kCancelRequestStatusCode = -3;
const int kTimeoutStatusCode = -4;
