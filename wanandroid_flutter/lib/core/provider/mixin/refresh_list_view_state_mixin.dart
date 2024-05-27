import 'dart:async';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef ListDataRefreshable<T> = Refreshable<Future<List<T>>>;

mixin RefreshListViewStateMixin<
        ProviderType extends ProviderBase<AsyncValue<List<T>>>,
        T,
        ConsumerStatefulWidgetType extends ConsumerStatefulWidget>
    on ConsumerState<ConsumerStatefulWidgetType> {

  @protected
  ProviderType get provider;

  @protected
  ListDataRefreshable<T> get refreshable;

  FutureOr<void> onRetry() {
    ref.invalidate(provider);
  }

  @protected
  Future<void> loadMore();
}