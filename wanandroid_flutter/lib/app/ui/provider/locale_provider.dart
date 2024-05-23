part of 'common_provider.dart';

@Riverpod(dependencies: <Object>[UserSettings])
class AppLanguage extends _$AppLanguage {
  @override
  Language build() =>
      ref.watch(userSettingsProvider)?.language ?? Language.system;

  void switchLocale(Language language) {
    ref.read(userSettingsProvider.notifier).update(language: language);
  }
}
