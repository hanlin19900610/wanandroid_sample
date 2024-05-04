part of 'common_provider.dart';

@Riverpod(keepAlive: true)
external Box loginHiveBox();

Future<Box> openLoginHiveBox() async {
  var hiveBox = await Hive.openBox(HiveKeys.kLoginBoxName);
  return hiveBox;
}

@Riverpod(keepAlive: true)
external Box commonHiveBox();

Future<Box> openCommonHiveBox() async {
  var hiveBox = await Hive.openBox(HiveKeys.kCommonBoxName);
  return hiveBox;
}

initializeHive() async {
  var dir = await getApplicationDocumentsDirectory();
  Hive
    ..init(dir.path)
    ..registerAdapter(UserSettingsCacheAdapter())
    ..registerAdapter(LanguageAdapter())
    ..registerAdapter(ThemeModeAdapter());
}