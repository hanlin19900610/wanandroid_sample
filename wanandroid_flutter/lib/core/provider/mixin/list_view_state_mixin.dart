import 'dart:async';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/list_view_state.dart';

mixin RefreshListViewStateMixin<
        ProviderType extends ProviderBase<AsyncValue<List<T>>>,
        T,
        ConsumerStatefulWidgetType extends ConsumerStatefulWidget>
    on ConsumerState<ConsumerStatefulWidgetType> {
  @protected
  ProviderType get provider;

  @protected
  Refreshable<Future<List<T>>> get refreshable;

  FutureOr<void> onRetry() {
    ref.invalidate(provider);
  }
}
