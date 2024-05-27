import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin LoadMoreMixin<T> {
  AsyncValue<List<T>> get state;

  set state(AsyncValue<List<T>> value);

  late final int pageNum;
  late final int pageSize;

  final EasyRefreshController _refreshController = EasyRefreshController();

  EasyRefreshController get refreshController => _refreshController;

  @protected
  Future<List<T>> buildMore(int pageNum, int pageSize);

  Future<void> loadMore() async {
    return state.whenOrNull<Future<void>>(
      data: (List<T> list) async {
        /// Prevents no data indicator from being displayed even when no data
        /// is available
        if (list.isEmpty) {
          _refreshController.finishLoad(IndicatorResult.noMore);
          return;
        }

        /// Prevent no data state not being set on initialization
        if (list.length < pageSize) {
          _refreshController.finishLoad(IndicatorResult.noMore);
          return;
        }

        try {
          /// Some api's pageNum will be self-increasing, some won't, so here
          /// it's handled internally.

          final List<T> value = await buildMore(
            pageNum + 1,
            pageSize,
          );

          state = AsyncData<List<T>>(
            list..addAll(value),
          );
          if (value.length < pageSize) {
            _refreshController.finishLoad(IndicatorResult.noMore);
          } else {
            _refreshController.finishLoad(IndicatorResult.success);
          }

          return;
        } on Exception catch (_) {
          _refreshController.finishLoad(IndicatorResult.fail);
          return;
        }
      },
      error: (Object obj, StackTrace stackTrace) async {
        _refreshController.finishLoad(IndicatorResult.fail);
        return;
      },
    );
  }
}
