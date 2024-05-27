import 'package:easy_refresh/easy_refresh.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wanandroid_flutter/core/provider/mixin/load_more_mixin.dart';
import 'package:wanandroid_flutter/lib.dart';

part 'home_provider.g.dart';

@riverpod
class HomeArticleList extends _$HomeArticleList
    with LoadMoreMixin<ArticleBean> {
  late ApiClient _apiClient;
  // 置顶文章
  List<ArticleBean> articleTopList = [];

  // 轮播图
  List<HomeBannerBean> bannerList = [];

  @override
  Future<List<ArticleBean>> build({
    int pageNum = 0,
    int pageSize = 20,
  }) async {
    try {
      _apiClient = ref.read(networkProvider);
      if (pageNum == 0) {
        bannerList = await getBannerList();
        articleTopList = await getArticleTopList();
      }
      var articlePage = await _apiClient.getArticleList(pageNum);
      if (pageNum == 0) {
        refreshController.finishRefresh(articlePage.datas.length < pageSize ? IndicatorResult.noMore: IndicatorResult.success, true);
      }
      var list = <ArticleBean>[];
      for (var element in articleTopList) {
        element.isTop = true;
      }
      list.addAll(articleTopList);
      list.addAll(articlePage.datas);
      return list;
    }catch(e,s){
      if (pageNum == 0) {
        refreshController.finishRefresh(IndicatorResult.fail, true);
      }
      return [];
    }
  }

  Future<List<ArticleBean>> getArticleTopList() async {
    List<ArticleBean> list = [];
    list = await _apiClient.getArticleTopList();
    return list;
  }

  Future<List<HomeBannerBean>> getBannerList() async {
    List<HomeBannerBean> list = [];
    list = await _apiClient.getBannerList();
    return list;
  }

  @override
  Future<List<ArticleBean>> buildMore(int pageNum, int pageSize) =>
      build(pageNum: pageNum, pageSize: pageSize);
}
