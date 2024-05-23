import 'package:shared_preferences/shared_preferences.dart';

/// 轻量级本地化存储工具 只存储基本数据类型
/// 在app入口调用init
///@author:zhangteng
///@date:2023/4/15
class SPUtils {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setString(String key, String value) {
    return sharedPreferences.setString(key, value);
  }

  static String getString(String key, {String defaultValue = ''}) {
    return sharedPreferences.getString(key) ?? defaultValue;
  }

  static Future<bool> setBool(String key, bool value) {
    return sharedPreferences.setBool(key, value);
  }

  static bool getBool(String key, {bool defaultValue = false}) {
    return sharedPreferences.getBool(key) ?? defaultValue;
  }

  static Future<bool> setDouble(String key, double value) {
    return sharedPreferences.setDouble(key, value);
  }

  static double getDouble(String key, {double defaultValue = 0}) {
    return sharedPreferences.getDouble(key) ?? defaultValue;
  }

  static Future<bool> setInt(String key, int value) {
    return sharedPreferences.setInt(key, value);
  }

  static int getInt(String key, {int defaultValue = 0}) {
    return sharedPreferences.getInt(key) ?? defaultValue;
  }
}
