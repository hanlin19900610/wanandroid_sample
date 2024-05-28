// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeWxArticleListHash() => r'e9750790467bed2c20f6d6eeeb5b1d4c885959b8';

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
String _$homeArticleListHash() => r'17c130ad9e2aeefaa99bc39440fbaca2870016e5';

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

String _$qaArticleListHash() => r'8dacf61f3f508f9fa4e182b5a6b5bd3a0664b8df';

abstract class _$QaArticleList
    extends BuildlessAutoDisposeAsyncNotifier<List<ArticleBean>> {
  late final int pageNum;
  late final int pageSize;

  FutureOr<List<ArticleBean>> build({
    int pageNum = 1,
    int pageSize = 20,
  });
}

/// See also [QaArticleList].
@ProviderFor(QaArticleList)
const qaArticleListProvider = QaArticleListFamily();

/// See also [QaArticleList].
class QaArticleListFamily extends Family<AsyncValue<List<ArticleBean>>> {
  /// See also [QaArticleList].
  const QaArticleListFamily();

  /// See also [QaArticleList].
  QaArticleListProvider call({
    int pageNum = 1,
    int pageSize = 20,
  }) {
    return QaArticleListProvider(
      pageNum: pageNum,
      pageSize: pageSize,
    );
  }

  @override
  QaArticleListProvider getProviderOverride(
    covariant QaArticleListProvider provider,
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
  String? get name => r'qaArticleListProvider';
}

/// See also [QaArticleList].
class QaArticleListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    QaArticleList, List<ArticleBean>> {
  /// See also [QaArticleList].
  QaArticleListProvider({
    int pageNum = 1,
    int pageSize = 20,
  }) : this._internal(
          () => QaArticleList()
            ..pageNum = pageNum
            ..pageSize = pageSize,
          from: qaArticleListProvider,
          name: r'qaArticleListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$qaArticleListHash,
          dependencies: QaArticleListFamily._dependencies,
          allTransitiveDependencies:
              QaArticleListFamily._allTransitiveDependencies,
          pageNum: pageNum,
          pageSize: pageSize,
        );

  QaArticleListProvider._internal(
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
    covariant QaArticleList notifier,
  ) {
    return notifier.build(
      pageNum: pageNum,
      pageSize: pageSize,
    );
  }

  @override
  Override overrideWith(QaArticleList Function() create) {
    return ProviderOverride(
      origin: this,
      override: QaArticleListProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<QaArticleList, List<ArticleBean>>
      createElement() {
    return _QaArticleListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QaArticleListProvider &&
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

mixin QaArticleListRef
    on AutoDisposeAsyncNotifierProviderRef<List<ArticleBean>> {
  /// The parameter `pageNum` of this provider.
  int get pageNum;

  /// The parameter `pageSize` of this provider.
  int get pageSize;
}

class _QaArticleListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<QaArticleList,
        List<ArticleBean>> with QaArticleListRef {
  _QaArticleListProviderElement(super.provider);

  @override
  int get pageNum => (origin as QaArticleListProvider).pageNum;
  @override
  int get pageSize => (origin as QaArticleListProvider).pageSize;
}

String _$squareArticleListHash() => r'291bbcde77b5efcbff9180813f37018a97b4aa3b';

abstract class _$SquareArticleList
    extends BuildlessAutoDisposeAsyncNotifier<List<ArticleBean>> {
  late final int pageNum;
  late final int pageSize;

  FutureOr<List<ArticleBean>> build({
    int pageNum = 1,
    int pageSize = 20,
  });
}

/// See also [SquareArticleList].
@ProviderFor(SquareArticleList)
const squareArticleListProvider = SquareArticleListFamily();

/// See also [SquareArticleList].
class SquareArticleListFamily extends Family<AsyncValue<List<ArticleBean>>> {
  /// See also [SquareArticleList].
  const SquareArticleListFamily();

  /// See also [SquareArticleList].
  SquareArticleListProvider call({
    int pageNum = 1,
    int pageSize = 20,
  }) {
    return SquareArticleListProvider(
      pageNum: pageNum,
      pageSize: pageSize,
    );
  }

  @override
  SquareArticleListProvider getProviderOverride(
    covariant SquareArticleListProvider provider,
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
  String? get name => r'squareArticleListProvider';
}

/// See also [SquareArticleList].
class SquareArticleListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SquareArticleList, List<ArticleBean>> {
  /// See also [SquareArticleList].
  SquareArticleListProvider({
    int pageNum = 1,
    int pageSize = 20,
  }) : this._internal(
          () => SquareArticleList()
            ..pageNum = pageNum
            ..pageSize = pageSize,
          from: squareArticleListProvider,
          name: r'squareArticleListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$squareArticleListHash,
          dependencies: SquareArticleListFamily._dependencies,
          allTransitiveDependencies:
              SquareArticleListFamily._allTransitiveDependencies,
          pageNum: pageNum,
          pageSize: pageSize,
        );

  SquareArticleListProvider._internal(
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
    covariant SquareArticleList notifier,
  ) {
    return notifier.build(
      pageNum: pageNum,
      pageSize: pageSize,
    );
  }

  @override
  Override overrideWith(SquareArticleList Function() create) {
    return ProviderOverride(
      origin: this,
      override: SquareArticleListProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<SquareArticleList, List<ArticleBean>>
      createElement() {
    return _SquareArticleListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SquareArticleListProvider &&
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

mixin SquareArticleListRef
    on AutoDisposeAsyncNotifierProviderRef<List<ArticleBean>> {
  /// The parameter `pageNum` of this provider.
  int get pageNum;

  /// The parameter `pageSize` of this provider.
  int get pageSize;
}

class _SquareArticleListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SquareArticleList,
        List<ArticleBean>> with SquareArticleListRef {
  _SquareArticleListProviderElement(super.provider);

  @override
  int get pageNum => (origin as SquareArticleListProvider).pageNum;
  @override
  int get pageSize => (origin as SquareArticleListProvider).pageSize;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
