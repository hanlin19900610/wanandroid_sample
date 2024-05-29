import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:wanandroid_flutter/app/ui/page/main/nav/provider/nav_provider.dart';
import 'package:wanandroid_flutter/lib.dart';

class TreePage extends ConsumerStatefulWidget {
  const TreePage({super.key});

  @override
  ConsumerState createState() => _TreePageState();
}

class _TreePageState extends ConsumerState<TreePage> {
  var currentValue = 0;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();

  final _sideBarController = TDSideBarController();
  var lock = false;

  /// 颜色列表
  var colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
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
  void initState() {
    super.initState();

    itemPositionsListener.itemPositions.addListener(() {
      if (lock) {
        return;
      }
      var index = itemPositionsListener.itemPositions.value.first.index;
      if (currentValue != index) {
        setState(() {
          _sideBarController.selectTo(index);
        });
      }
    });
  }

  Future<void> onSelected(int value) async {
    if (currentValue != value) {
      lock = true;
      await itemScrollController.scrollTo(
          index: value,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn);
      await Future.delayed(const Duration(milliseconds: 500));
      setState(() {
        currentValue = value;
      });
      lock = false;
    }
  }

  void onChanged(int value) {
    setState(() {
      currentValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(treeListProvider).when(
          data: (List<TreeBean> list) => _buildAnchorSideBar(context, list),
          error: (obj, s) => CustomErrorWidget.withOtherError(
              BaseLibs.httpConfig.getDioError(obj)),
          loading: () => const LoadingWidget(),
        );
  }

  Widget _buildAnchorSideBar(BuildContext context, List<TreeBean> treeList) {
    // 锚点用法
    final list = <SideItemProps>[];
    final pages = <Widget>[];

    for (var i = 0; i < treeList.length; i++) {
      list.add(SideItemProps(
        index: i,
        label: treeList[i].name,
        value: i,
      ));
      pages.add(getAnchorDemo(i, treeList[i]));
    }

    pages.add(Container(
      height: 50.h,
      decoration: const BoxDecoration(color: Colors.white),
    ));

    var demoHeight = MediaQuery.of(context).size.height;

    return Row(
      children: [
        SizedBox(
          width: 110.w,
          child: TDSideBar(
            height: demoHeight,
            style: TDSideBarStyle.outline,
            value: currentValue,
            controller: _sideBarController,
            onChanged: onChanged,
            onSelected: onSelected,
            children: list
                .map((ele) => TDSideBarItem(
                    label: ele.label ?? '',
                    badge: ele.badge,
                    value: ele.value,
                    icon: ele.icon))
                .toList(),
          ),
        ),
        Expanded(
            child: SizedBox(
          height: demoHeight,
          child: ScrollablePositionedList.builder(
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int index) => pages[index],
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            scrollOffsetListener: scrollOffsetListener,
          ),
        ))
      ],
    );
  }

  Widget getAnchorDemo(int index, TreeBean treeBean) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15, right: 9),
            child: TDText(treeBean.name,
                style: const TextStyle(
                  fontSize: 14,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: displayImageList(treeBean.children ?? []),
          ),
        ],
      ),
    );
  }

  Widget displayImageList(List<TreeChildrenBean> children) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: [...children.asMap().keys.map((e) => displayImageItem(children[e], e))],
        ),
        MFSizedBox.height(5.h),
        Divider(height: 0.3.h,color: Colors.grey.withOpacity(0.3),),
      ],
    );
  }

  Widget displayImageItem(TreeChildrenBean bean, int index) {
    return TDTag(
      bean.name ?? '',
      textColor: Colors.white,
      backgroundColor: colorList[index % colorList.length],
      size: TDTagSize.medium,
      shape: TDTagShape.round,
    );
  }
}
