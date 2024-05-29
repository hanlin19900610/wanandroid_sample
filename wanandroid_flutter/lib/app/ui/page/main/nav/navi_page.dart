import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:wanandroid_flutter/app/app.dart';
import 'package:wanandroid_flutter/app/ui/page/main/nav/provider/nav_provider.dart';

import '../../../../../lib.dart';

class NaviPage extends ConsumerStatefulWidget {
  const NaviPage({super.key});

  @override
  ConsumerState createState() => _NaviPageState();
}

class _NaviPageState extends ConsumerState<NaviPage>
    with AutomaticKeepAliveClientMixin {


  /// 颜色列表
  var colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.cyan,
    Colors.teal,
    Colors.lime,
    Colors.amber,
    Colors.indigo,
    Colors.grey,
    Colors.black,
    Colors.deepOrange,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ref.watch(naviListProvider).when(
          data: (List<NaviBean> list) => _buildContentView(context, list),
          error: (obj, s) => CustomErrorWidget.withOtherError(
              BaseLibs.httpConfig.getDioError(obj)),
          loading: () => const LoadingWidget(),
        );
  }

  Widget _buildContentView(BuildContext context, List<NaviBean> list) {
    return ScrollablePositionedList.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) =>
          getAnchorDemo(index, list[index]),
    );
  }

  Widget getAnchorDemo(int index, NaviBean naviBean) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15, right: 9),
            child: TDText(naviBean.name,
                style: const TextStyle(
                  fontSize: 14,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: displayImageList(naviBean.articles ?? []),
          ),
        ],
      ),
    );
  }

  Widget displayImageList(List<ArticleBean> children) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: [
            ...children
                .asMap()
                .keys
                .map((e) => displayImageItem(children[e], e))
          ],
        ),
        MFSizedBox.height(5.h),
        Divider(
          height: 0.3.h,
          color: Colors.grey.withOpacity(0.3),
        ),
      ],
    );
  }

  Widget displayImageItem(ArticleBean bean, int index) {
    return TDTag(
      bean.title ?? '',
      textColor: Colors.white,
      backgroundColor: colorList[index % colorList.length],
      size: TDTagSize.medium,
      shape: TDTagShape.round,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
