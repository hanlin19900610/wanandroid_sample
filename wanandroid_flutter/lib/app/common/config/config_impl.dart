import 'package:flutter/src/widgets/framework.dart';
import 'package:wanandroid_flutter/lib.dart';

class ConfigImpl extends IConfig{
  @override
  int configInitPageIndex() => 1;

  @override
  Widget? configLoadEmptyView() {
    // TODO: implement configLoadEmptyView
    throw UnimplementedError();
  }

  @override
  Widget? configLoadErrorView() {
    // TODO: implement configLoadErrorView
    throw UnimplementedError();
  }

  @override
  Widget? configLoadingView() {
    // TODO: implement configLoadingView
    throw UnimplementedError();
  }

  @override
  int configPageSize() => 20;

  @override
  String defaultHead() => '';

  @override
  String defaultImage() => '';
}