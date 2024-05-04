// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginHiveBoxHash() => r'606925e3d49e145113829f242607512afc055b2e';

/// See also [loginHiveBox].
@ProviderFor(loginHiveBox)
final loginHiveBoxProvider = Provider<Box>.internal(
  (_) => throw UnsupportedError(
    'The provider "loginHiveBoxProvider" is expected to get overridden/scoped, '
    'but was accessed without an override.',
  ),
  name: r'loginHiveBoxProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginHiveBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoginHiveBoxRef = ProviderRef<Box>;
String _$commonHiveBoxHash() => r'cecf4f6a3885b7ec310bd467986301bb9abedd7d';

/// See also [commonHiveBox].
@ProviderFor(commonHiveBox)
final commonHiveBoxProvider = Provider<Box>.internal(
  (_) => throw UnsupportedError(
    'The provider "commonHiveBoxProvider" is expected to get overridden/scoped, '
    'but was accessed without an override.',
  ),
  name: r'commonHiveBoxProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$commonHiveBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommonHiveBoxRef = ProviderRef<Box>;
String _$appLanguageHash() => r'1c92f6cc7ebbcafef466d245de374daf3e8953ab';

/// See also [AppLanguage].
@ProviderFor(AppLanguage)
final appLanguageProvider =
    AutoDisposeNotifierProvider<AppLanguage, Language>.internal(
  AppLanguage.new,
  name: r'appLanguageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appLanguageHash,
  dependencies: <ProviderOrFamily>[userSettingsProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    userSettingsProvider,
    ...?userSettingsProvider.allTransitiveDependencies
  },
);

typedef _$AppLanguage = AutoDisposeNotifier<Language>;
String _$appThemeModeHash() => r'7b34c08cd03c8681375ab8bb6674262ea0f44c42';

/// See also [AppThemeMode].
@ProviderFor(AppThemeMode)
final appThemeModeProvider =
    AutoDisposeNotifierProvider<AppThemeMode, ThemeMode>.internal(
  AppThemeMode.new,
  name: r'appThemeModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appThemeModeHash,
  dependencies: <ProviderOrFamily>[userSettingsProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    userSettingsProvider,
    ...?userSettingsProvider.allTransitiveDependencies
  },
);

typedef _$AppThemeMode = AutoDisposeNotifier<ThemeMode>;
String _$userSettingsHash() => r'5d0db5057e0b7b6989d08be4d1ab2299f395c3a1';

/// See also [UserSettings].
@ProviderFor(UserSettings)
final userSettingsProvider =
    AutoDisposeNotifierProvider<UserSettings, UserSettingsCache?>.internal(
  UserSettings.new,
  name: r'userSettingsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userSettingsHash,
  dependencies: <ProviderOrFamily>[commonHiveBoxProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    commonHiveBoxProvider,
    ...?commonHiveBoxProvider.allTransitiveDependencies
  },
);

typedef _$UserSettings = AutoDisposeNotifier<UserSettingsCache?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
