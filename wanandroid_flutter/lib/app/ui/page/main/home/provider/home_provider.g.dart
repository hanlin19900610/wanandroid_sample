// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeWxArticleListHash() => r'd627a2ef75f85a35d0230f767014047e9c10882e';

/// See also [HomeWxArticleList].
@ProviderFor(HomeWxArticleList)
final homeWxArticleListProvider = AutoDisposeAsyncNotifierProvider<
    HomeWxArticleList, List<WxArticleBean>>.internal(
  HomeWxArticleList.new,
  name: r'homeWxArticleListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeWxArticleListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeWxArticleList = AutoDisposeAsyncNotifier<List<WxArticleBean>>;
String _$homeArticleListHash() => r'b15a46b01a3c1eb024299385bfcf4390edef4e5f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HomeArticleList
    extends BuildlessAutoDisposeAsyncNotifier<List<ArticleBean>> {
  late final int pageNum;
  late final int pageSize;

  FutureOr<List<ArticleBean>> build({
    int pageNum = 0,
    int pageSize = 20,
  });
}

/// See also [HomeArticleList].
@ProviderFor(HomeArticleList)
const homeArticleListProvider = HomeArticleListFamily();

/// See also [HomeArticleList].
class HomeArticleListFamily extends Family<AsyncValue<List<ArticleBean>>> {
  /// See also [HomeArticleList].
  const HomeArticleListFamily();

  /// See also [HomeArticleList].
  HomeArticleListProvider call({
    int pageNum = 0,
    int pageSize = 20,
  }) {
    return HomeArticleListProvider(
      pageNum: pageNum,
      pageSize: pageSize,
    );
  }

  @override
  HomeArticleListProvider getProviderOverride(
    covariant HomeArticleListProvider provider,
  ) {
    return call(
      pageNum: provider.pageNum,
      pageSize: provider.pageSize,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homeArticleListProvider';
}

/// See also [HomeArticleList].
class HomeArticleListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    HomeArticleList, List<ArticleBean>> {
  /// See also [HomeArticleList].
  HomeArticleListProvider({
    int pageNum = 0,
    int pageSize = 20,
  }) : this._internal(
          () => HomeArticleList()
            ..pageNum = pageNum
            ..pageSize = pageSize,
          from: homeArticleListProvider,
          name: r'homeArticleListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeArticleListHash,
          dependencies: HomeArticleListFamily._dependencies,
          allTransitiveDependencies:
              HomeArticleListFamily._allTransitiveDependencies,
          pageNum: pageNum,
          pageSize: pageSize,
        );

  HomeArticleListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pageNum,
    required this.pageSize,
  }) : super.internal();

  final int pageNum;
  final int pageSize;

  @override
  FutureOr<List<ArticleBean>> runNotifierBuild(
    covariant HomeArticleList notifier,
  ) {
    return notifier.build(
      pageNum: pageNum,
      pageSize: pageSize,
    );
  }

  @override
  Override overrideWith(HomeArticleList Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeArticleListProvider._internal(
        () => create()
          ..pageNum = pageNum
          ..pageSize = pageSize,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pageNum: pageNum,
        pageSize: pageSize,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HomeArticleList, List<ArticleBean>>
      createElement() {
    return _HomeArticleListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeArticleListProvider &&
        other.pageNum == pageNum &&
        other.pageSize == pageSize;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNum.hashCode);
    hash = _SystemHash.combine(hash, pageSize.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomeArticleListRef
    on AutoDisposeAsyncNotifierProviderRef<List<ArticleBean>> {
  /// The parameter `pageNum` of this provider.
  int get pageNum;

  /// The parameter `pageSize` of this provider.
  int get pageSize;
}

class _HomeArticleListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HomeArticleList,
        List<ArticleBean>> with HomeArticleListRef {
  _HomeArticleListProviderElement(super.provider);

  @override
  int get pageNum => (origin as HomeArticleListProvider).pageNum;
  @override
  int get pageSize => (origin as HomeArticleListProvider).pageSize;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
