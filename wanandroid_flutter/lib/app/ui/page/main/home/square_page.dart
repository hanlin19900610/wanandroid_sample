import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wanandroid_flutter/app/ui/page/main/home/provider/home_provider.dart';
import 'package:wanandroid_flutter/core/core.dart';
import 'package:wanandroid_flutter/lib.dart';

import 'widgets/article_item.dart';

class SquarePage extends ConsumerStatefulWidget {
  const SquarePage({super.key});

  @override
  ConsumerState createState() => _SquarePageState();
}

class _SquarePageState extends ConsumerState<SquarePage>
    with
        RefreshListViewStateMixin<SquareArticleListProvider, ArticleBean,
            SquarePage>,
        AutomaticKeepAliveClientMixin {
  @override
  Future<void> loadMore() => ref.read(provider.notifier).loadMore();

  @override
  SquareArticleListProvider get provider => squareArticleListProvider();

  @override
  ListDataRefreshable<ArticleBean> get refreshable => provider.future;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return EasyRefresh(
        controller: ref.watch(provider.notifier).refreshController,
        onRefresh: onRetry,
        onLoad: loadMore,
        child: ref.watch(provider).when(
              data: (List<ArticleBean> list) {
                return _buildContent(list);
              },
              error: (obj, stackTrace) => CustomErrorWidget.withOtherError(
                  BaseLibs.httpConfig.getDioError(obj)),
              loading: () => const LoadingWidget(),
            ));
  }

  Widget _buildContent(List<ArticleBean> list) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ArticleItem(
          article: list[index],
        );
      },
      itemCount: list.length,
    );
  }
}
