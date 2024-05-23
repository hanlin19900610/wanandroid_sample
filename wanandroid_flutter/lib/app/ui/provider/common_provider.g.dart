// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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
String _$appThemeModeHash() => r'e7fb540d52a6fb922143f38c6a1ded80d88ac704';

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
String _$userSettingsHash() => r'44ea0e5c032faadc6efe4c4349c405e27b1e582e';

/// See also [UserSettings].
@ProviderFor(UserSettings)
final userSettingsProvider =
    AutoDisposeNotifierProvider<UserSettings, UserSettingsCache?>.internal(
  UserSettings.new,
  name: r'userSettingsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userSettingsHash,
  dependencies: <ProviderOrFamily>[appDatabaseProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    appDatabaseProvider,
    ...?appDatabaseProvider.allTransitiveDependencies
  },
);

typedef _$UserSettings = AutoDisposeNotifier<UserSettingsCache?>;
String _$connectivityStreamHash() =>
    r'a1ff57f764108152a105110b9b86045761e56d25';

/// See also [ConnectivityStream].
@ProviderFor(ConnectivityStream)
final connectivityStreamProvider =
    StreamNotifierProvider<ConnectivityStream, ConnectivityResult>.internal(
  ConnectivityStream.new,
  name: r'connectivityStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectivityStreamHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$ConnectivityStream = StreamNotifier<ConnectivityResult>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
