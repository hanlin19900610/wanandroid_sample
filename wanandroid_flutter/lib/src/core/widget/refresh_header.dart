part of 'widgets.dart';

class RefreshClassicalHeader extends ClassicHeader{

  final BuildContext context;

  RefreshClassicalHeader(this.context);

  @override
  IndicatorPosition get position => IndicatorPosition.locator;

  @override
  String? get dragText => S.of(context).pullToRefresh;

  @override
  String? get armedText => S.of(context).releaseBegins;

  @override
  String? get readyText => S.of(context).refreshing;

  @override
  String? get processingText => S.of(context).processing;

  @override
  String? get processedText => S.of(context).successful;

  @override
  String? get noMoreText => S.of(context).noMore;

  @override
  String? get failedText => S.of(context).failed;

  @override
  String? get messageText => S.of(context).lastUpdated;
}