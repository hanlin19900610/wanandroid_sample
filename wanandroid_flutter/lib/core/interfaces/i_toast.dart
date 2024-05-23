abstract class IToast {
  ///显示Toast
  void show(String? text, {bool isShowLong = false});

  ///仅在debug环境显示的Toast,方便调测用的
  void showDebug(String? text, {bool isShowLong = false});
}