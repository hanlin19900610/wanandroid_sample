part of 'models.dart';

@freezed
@HiveType(typeId: 0)
class UserSettingsCache with _$UserSettingsCache {
  const factory UserSettingsCache({
    @HiveField(0) @Default(ThemeMode.system) ThemeMode themeMode,
    @HiveField(1) @Default(Language.system) Language language,
  }) = _UserSettingsCache;
}