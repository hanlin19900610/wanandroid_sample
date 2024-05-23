import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class BaseListView<T> extends StatefulWidget {
  final bool enablePullUp;
  final bool enablePullDown;
  final Function()? onRefresh;
  final Function()? onLoadMore;
  final EasyRefreshController refreshController;
  final ScrollController scrollController;
  final List<T> data;
  final Color? bgColor;
  final Function? itemBuilder;
  final Function? item;
  final Widget? emptyWidget;

  const BaseListView({
    Key? key,
    this.enablePullUp = false,
    this.enablePullDown = false,
    required this.onRefresh,
    required this.onLoadMore,
    required this.refreshController,
    required this.scrollController,
    required this.data,
    this.itemBuilder,
    this.bgColor = Colors.white,
    this.item,
    this.emptyWidget,
  }) : super(key: key);

  @override
  State<BaseListView> createState() => _BaseListViewState<T>();
}

class _BaseListViewState<T> extends State<BaseListView> {
  @override
  void initState() {
    super.initState();

  }

  /// 刷新组件初始化配置
  ///
  /// [list] 列表组件
  Widget _configuration(Widget list) {
    return EasyRefresh(
      controller: widget.refreshController,
      header: RefreshClassicalHeader(context),
      footer: RefreshClassicalFooter(context),
      onRefresh: widget.onRefresh ?? () {},
      onLoad: widget.onLoadMore ?? () {},
      simultaneously: false, // 刷新和加载是否可以同时进行
      canRefreshAfterNoMore: true,
      canLoadAfterNoMore: false,
      refreshOnStart: false, // 启动刷新
      child: list,
    );
  }

  Widget _itemBuilder(context, index) {
    if (widget.item != null) {
      return widget.item!((widget.data[index]) as T, index: index);
    }
    if (widget.itemBuilder != null) {
      return widget.itemBuilder!((widget.data[index]) as T, index);
    }
    return const SizedBox();
  }

  /// 列表组件
  Widget _list() {
    if (widget.emptyWidget != null && widget.data.isEmpty) {
      return widget.emptyWidget!;
    } else {
      return ListView.builder(
        cacheExtent: 20,
        physics: const BouncingScrollPhysics(),
        controller: widget.scrollController,
        reverse: false,
        itemCount: widget.data.length,
        itemBuilder: _itemBuilder,
      );
    }
  }

  @override
  Widget build(BuildContext context) => _configuration(_list());
}
