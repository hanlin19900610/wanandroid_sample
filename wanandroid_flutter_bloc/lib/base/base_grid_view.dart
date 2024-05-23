import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:wanandroid_flutter_bloc/widgets/refresh_footer.dart';
import 'package:wanandroid_flutter_bloc/widgets/refresh_header.dart';

import 'base.dart';

class BaseGridView<T> extends StatefulWidget {
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
  final EdgeInsets? padding;

  /// 宽高比
  final double childAspectRatio;

  /// 水平间距
  final double crossAxisSpacing;

  /// 垂直间距
  final double mainAxisSpacing;

  /// 一行几个
  final int crossAxisCount;

  const BaseGridView({
    super.key,
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
    this.padding,
    required this.childAspectRatio,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    required this.crossAxisCount,
  });

  @override
  State<BaseGridView> createState() => _BaseGridViewState<T>();
}

class _BaseGridViewState<T> extends State<BaseGridView> {
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

  /// 列表组件
  Widget _list() {
    return GridView.builder(
      itemCount: widget.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: widget.childAspectRatio, //宽高比
          crossAxisSpacing: widget.crossAxisSpacing, //水平间距
          mainAxisSpacing: widget.mainAxisSpacing, //垂直间距
          crossAxisCount: widget.crossAxisCount),
      padding: widget.padding ?? const EdgeInsets.all(0),
      itemBuilder: _itemBuilder,
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

  @override
  Widget build(BuildContext context) => _configuration(_list());
}
