import 'package:flutter/material.dart';

abstract class IConfig {
  ///配置全局http加载中的页面
  Widget? configLoadingView();

  ///配置全局http加载数据为空的页面
  Widget? configLoadEmptyView();

  ///配置全局http加载失败的页面
  Widget? configLoadErrorView();

  ///配置全局分页加载起始页Index
  int configInitPageIndex();

  ///配置全局分页加载页size
  int configPageSize();

  /// 默认头像
  String defaultHead();

  /// 默认占位图片
  String defaultImage();


}