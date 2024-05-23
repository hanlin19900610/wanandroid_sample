part of 'common_provider.dart';

@Riverpod(dependencies: <Object>[UserSettings])
class AppThemeMode extends _$AppThemeMode {
  @override
  ThemeMode build() =>
      ref.watch(userSettingsProvider)?.themeMode ?? ThemeMode.system;

  void switchThemeMode(ThemeMode themeMode) {
    if (state == themeMode) {
      return;
    }

    ref.read(userSettingsProvider.notifier).update(themeMode: themeMode);
  }
}
