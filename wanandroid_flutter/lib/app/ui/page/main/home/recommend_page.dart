import 'dart:async';
import 'package:card_swiper/card_swiper.dart';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:wanandroid_flutter/app/ui/page/main/home/provider/home_provider.dart';
import 'package:wanandroid_flutter/app/widget/loading_widget.dart';
import 'package:wanandroid_flutter/lib.dart';

import 'widgets/article_item.dart';
import 'widgets/wxarticle_item.dart';

class RecommendPage extends ConsumerStatefulWidget {
  const RecommendPage({super.key});

  @override
  ConsumerState createState() => _RecommendPageState();
}

class _RecommendPageState extends ConsumerState<RecommendPage>
    with
        RefreshListViewStateMixin<HomeArticleListProvider, ArticleBean,
            RecommendPage>,
        AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Future<void> loadMore() => ref.read(provider.notifier).loadMore();

  @override
  HomeArticleListProvider get provider => homeArticleListProvider();

  @override
  ListDataRefreshable<ArticleBean> get refreshable => provider.future;

  @override
  FutureOr<void> onRetry() async {
    await super.onRetry();
  }

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
    var bannerList = ref.watch(provider.notifier).bannerList;
    return CustomScrollView(
      slivers: [
        /// 轮播图
        SizedBox(
          width: double.infinity,
          height: 200.h,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              var item = bannerList[index];
              return Image.network(
                item.imagePath ?? '',
                fit: BoxFit.fill,
              );
            },
            itemCount: bannerList.length,
            pagination: const SwiperPagination(),
            autoplay: true,
            duration: 800,
            onTap: (int index) {},
          ),
        ).sliver(),

        /// 公众号列表
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).weChatOfficialAccount,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  TDButton(
                    text: S.of(context).change,
                    type: TDButtonType.text,
                    size: TDButtonSize.small,
                    textStyle: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    iconWidget: Icon(
                      Icons.change_circle,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                    onTap: () {
                      ref
                          .read(homeWxArticleListProvider.notifier)
                          .changeWxArticle();
                    },
                  ),
                ],
              ),
              MFSizedBox.height(5.h),
              ref.watch(homeWxArticleListProvider).when(
                  data: (list) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [...list.map((e) => WxArticleItem(wx: e))],
                      ),
                  error: (Object error, StackTrace stackTrace) =>
                      const SizedBox(),
                  loading: () => const SizedBox()),
            ],
          ),
        ).sliver(),

        /// 文章列表
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              final ArticleBean article = list[index];

              return ArticleItem(
                key: Key('home_article_${article.id}'),
                article: article,
              );
            },
            childCount: list.length,
          ),
        )
      ],
    );
  }
}
