import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:wanandroid_flutter/app/ui/page/main/nav/tree_page.dart';

import '../../../../../lib.dart';
import 'navi_page.dart';

class NavPage extends ConsumerStatefulWidget {
  const NavPage({super.key});

  @override
  ConsumerState createState() => _NavPageState();
}

class _NavPageState extends ConsumerState<NavPage>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  var tabs = [
    TDTab(text: S.current.tree),
    TDTab(text: S.current.nav),
  ];

  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Column(
        children: [
          /// 顶部导航栏
          _buildTopNavBar(),

          /// 内容布局
          _buildContentView()
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  Widget _buildTopNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MFSizedBox(width: 15.w),
        Expanded(
          child: TDTabBar(
            tabs: tabs,
            controller: _controller,
            labelPadding: EdgeInsets.all(10.r),
            showIndicator: true,
            isScrollable: true,
            dividerHeight: 0,
          ),
        ),
      ],
    );
  }

  Widget _buildContentView() {
    return Expanded(
      child: TDTabBarView(
        controller: _controller,
        isSlideSwitch: true,
        children: const [
          TreePage(),
          NaviPage(),
        ],
      ),
    );
  }
}
