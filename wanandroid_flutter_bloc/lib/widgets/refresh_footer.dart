
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class RefreshClassicalFooter extends ClassicFooter{

  final BuildContext context;

  RefreshClassicalFooter(this.context);

  @override
  IndicatorPosition get position => IndicatorPosition.locator;

  @override
  String? get dragText => S.of(context).pullUpLoading;

  @override
  String? get armedText => S.of(context).releaseBegins;

  @override
  String? get readyText => S.of(context).loading;

  @override
  String? get processingText => S.of(context).loading;

  @override
  String? get processedText => S.of(context).successful;

  @override
  String? get noMoreText => S.of(context).noMore;

  @override
  String? get failedText => S.of(context).failed;

  @override
  String? get messageText => S.of(context).lastUpdated;
}