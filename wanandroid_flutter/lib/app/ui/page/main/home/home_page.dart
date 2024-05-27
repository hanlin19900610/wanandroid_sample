import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:wanandroid_flutter/app/ui/page/main/home/provider/home_provider.dart';
import 'package:wanandroid_flutter/app/ui/page/main/home/qa_page.dart';
import 'package:wanandroid_flutter/app/ui/page/main/home/recommend_page.dart';
import 'package:wanandroid_flutter/app/ui/page/main/home/square_page.dart';
import 'package:wanandroid_flutter/lib.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  var tabs = [
    TDTab(text: S.current.recommend),
    TDTab(text: S.current.square),
    TDTab(text: S.current.question)
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
        IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_outlined)),
      ],
    );
  }

  Widget _buildContentView() {
    return Expanded(
      child: TDTabBarView(
        controller: _controller,
        isSlideSwitch: true,
        children: const [
          RecommendPage(),
          SquarePage(),
          QAPage()
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
