import 'package:flutter/foundation.dart';
import 'package:oktoast/oktoast.dart';

import '../../core.dart';

class DefaultToastImpl extends IToast {
  @override
  void show(String? text, {bool isShowLong = false}) {
    showToast(text ?? '');
  }

  @override
  void showDebug(String? text, {bool isShowLong = false}) {
    if (kDebugMode) {
      showToast(text ?? '');
    }
  }
}
