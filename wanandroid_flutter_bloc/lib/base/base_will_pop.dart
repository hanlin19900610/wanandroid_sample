import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class BaseWillPopPage extends StatefulWidget {
  final Widget child;
  final bool isAllowBack;

  const BaseWillPopPage({
    super.key,
    required this.child,
    required this.isAllowBack,
  });

  @override
  State<BaseWillPopPage> createState() => _BaseWillPopPageState();
}

class _BaseWillPopPageState extends State<BaseWillPopPage> {

  // 退出请求时间
  DateTime? currentBackPressTime;

  // 返回键退出
  bool closeOnConfirm() {
    DateTime now = DateTime.now();
    // 物理键，两次间隔大于4秒, 退出请求无效
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 4)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Center(child: Text('再次按下以关闭应用程序')),
          duration: Duration(seconds: 4),
        ),
      );
      return false;
    }

    // 退出请求有效
    currentBackPressTime = null;
    return true;
  }

  /// 内容

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) {
          return;
        }
        if (closeOnConfirm()) {
          // 系统级别导航栈 退出程序
          SystemNavigator.pop();
        }
      },
      child: widget.child,
    );
  }
}
