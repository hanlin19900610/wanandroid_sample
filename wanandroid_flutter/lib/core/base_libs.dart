import 'core.dart';

class BaseLibs {
  BaseLibs._();

  ///是否是debug模式
  static bool _isDebug = true;

  static bool get isDebug => _isDebug;

  ///全局资源配置类
  static late IConfig _config;

  static IConfig get config => _config;

  /// 网络配置类
  static late IHttpConfig _httpConfig;

  static IHttpConfig get httpConfig => _httpConfig;

  static Future<void> init({
    required bool isDebug,
    required IHttpConfig httpConfig,
    required IConfig config,
    IToast? toastImpl,
  }) async {
    _isDebug = isDebug;
    _config = config;
    _httpConfig = httpConfig;

    Constants.initPageIndex = _config.configInitPageIndex();
    Constants.pageSize = _config.configPageSize();

    ///初始化Toast
    ToastUtils.init(toastImpl);
  }

  ///应用关闭时调用该方法
  static Future<void> dispose() async {}
}
