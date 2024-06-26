part of 'interceptors.dart';

class NetWorkInterceptor extends Interceptor {
  NetWorkInterceptor({required this.ref});

  final Ref ref;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    ConnectivityResult? status =
        ref.read(connectivityStreamProvider).valueOrNull;

    if (status == null) {
      final List<ConnectivityResult?> result = await Future.wait(
        <Future<ConnectivityResult?>>[
          ref.read(connectivityStreamProvider.future),
          Future<ConnectivityResult?>.delayed(
            const Duration(seconds: 2), // Set check connectivity timeout
            () => throw OtherError(
              statusCode: kNetworkExceptionStatusCode,
              statusMessage: '',
            ),
          ),
        ],
        eagerError: true,
      ).catchError(
        (_) => <ConnectivityResult?>[
          ref.read(connectivityStreamProvider).valueOrNull,
          null,
        ],
      );

      status = result.first ?? result.last;

      LogUtils.w('Network Connectivity: $status');
    }

    if (status == null || status == ConnectivityResult.none) {
      // Add a random delay of 500 ms to 1000 ms to "comfort" the user.
      await Future<void>.delayed(
        Duration(milliseconds: Random().nextInt(500) + 500),
      );
      handler.reject(
        DioException(
          requestOptions: options,
          error: OtherError(
            statusCode: kTimeoutStatusCode,
            statusMessage: S.current.networkException,
          ),
        ),
      );

      return;
    }

    super.onRequest(options, handler);
  }
}
