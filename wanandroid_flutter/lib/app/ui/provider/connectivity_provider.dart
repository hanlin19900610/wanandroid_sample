part of 'common_provider.dart';

@Riverpod(keepAlive: true, dependencies: <Object>[])
class ConnectivityStream extends _$ConnectivityStream {
  @override
  Stream<ConnectivityResult> build() async* {
    await for (final List<ConnectivityResult> result
        in Connectivity().onConnectivityChanged) {
      if (result.first == ConnectivityResult.mobile) {
        DialogUtils.tips(S.current.useDataTrafficTips);
      }

      yield result.first;
    }
  }
}
