part of 'common_provider.dart';

@Riverpod(dependencies: [commonHiveBox])
class UserSettings extends _$UserSettings {

  late Box _hiveBox;

  @override
  UserSettingsCache? build(){
    _hiveBox = ref.read(commonHiveBoxProvider);
    return _hiveBox.get(HiveKeys.kUserSettings, defaultValue: const UserSettingsCache());
  }

  void update({
    ThemeMode? themeMode,
    Language? language,
}){
    UserSettingsCache update = state ?? const UserSettingsCache();

    if(themeMode != null){
      update = update.copyWith(themeMode: themeMode);
    }

    if(language != null){
      update = update.copyWith(language: language);
    }

    state = update;

    _hiveBox.put(HiveKeys.kUserSettings, update);
  }

}