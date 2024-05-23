// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataImpl _$$ResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDataImpl(
      code: json['code'] as int? ?? 0,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$ResponseDataImplToJson(_$ResponseDataImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiClient implements ApiClient {
  _ApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://wanandroid.com';
  }

  final Dio _dio;

  String? baseUrl;

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appTemporaryDirectoryHash() =>
    r'48a3de06838a097c512a4c7fd6eefb95b3fe3578';

/// See also [appTemporaryDirectory].
@ProviderFor(appTemporaryDirectory)
final appTemporaryDirectoryProvider = Provider<Directory>.internal(
  (_) => throw UnsupportedError(
    'The provider "appTemporaryDirectoryProvider" is expected to get overridden/scoped, '
    'but was accessed without an override.',
  ),
  name: r'appTemporaryDirectoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appTemporaryDirectoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppTemporaryDirectoryRef = ProviderRef<Directory>;
String _$appCookieJarHash() => r'd6f68a4dcf9c30cd2cbf7def9673f39b5a68f604';

/// See also [AppCookieJar].
@ProviderFor(AppCookieJar)
final appCookieJarProvider =
    NotifierProvider<AppCookieJar, PersistCookieJar>.internal(
  AppCookieJar.new,
  name: r'appCookieJarProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appCookieJarHash,
  dependencies: <ProviderOrFamily>[appTemporaryDirectoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    appTemporaryDirectoryProvider,
    ...?appTemporaryDirectoryProvider.allTransitiveDependencies
  },
);

typedef _$AppCookieJar = Notifier<PersistCookieJar>;
String _$networkHash() => r'7ad7b81341929c41861deb6dd5167a46c4d763a3';

/// See also [Network].
@ProviderFor(Network)
final networkProvider = NotifierProvider<Network, ApiClient>.internal(
  Network.new,
  name: r'networkProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$networkHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Network = Notifier<ApiClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
