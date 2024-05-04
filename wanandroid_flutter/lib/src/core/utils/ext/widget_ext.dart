part of 'ext.dart';

extension WidgetExt on Widget {

  /// 把普通Widget 转换成 Sliver
  Widget sliver() {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}
