import '../core.dart';

///toast工具
class ToastUtils {
  ToastUtils._();

  static IToast _iToast = DefaultToastImpl();

  ///初始化Toast
  static void init(IToast? toastImpl) {
    if (toastImpl != null) {
      _iToast = toastImpl;
    }
  }

  ///显示Toast
  static void show(String? text, {bool isShowLong = false}) {
    _iToast.show(text, isShowLong: isShowLong);
  }

  ///仅在debug环境显示的Toast,方便调测用的
  static void showDebug(String? text, {bool isShowLong = false}) {
    _iToast.showDebug(text, isShowLong: isShowLong);
  }
}