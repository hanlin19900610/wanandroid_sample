part of 'home_provider.dart';


@riverpod
class QaArticleList extends _$QaArticleList
    with LoadMoreMixin<ArticleBean> {
  late ApiClient _apiClient;

  @override
  Future<List<ArticleBean>> build({
    int pageNum = 1,
    int pageSize = 20,
  }) async {
    try {
      _apiClient = ref.read(networkProvider);
      var articlePage = await _apiClient.getWenDaArticleList(pageNum);
      if (pageNum == 0) {
        refreshController.finishRefresh(articlePage.over ? IndicatorResult.noMore: IndicatorResult.success, true);
      }else{
        refreshController.finishLoad(articlePage.over ? IndicatorResult.noMore: IndicatorResult.success, true);
      }
      var list = <ArticleBean>[];
      list.addAll(articlePage.datas);
      return list;
    }catch(e,s){
      if (pageNum == 0) {
        refreshController.finishRefresh(IndicatorResult.fail, true);
      }else{
        refreshController.finishLoad(IndicatorResult.fail, true);
      }
      return [];
    }
  }


  @override
  Future<List<ArticleBean>> buildMore(int pageNum, int pageSize) =>
      build(pageNum: pageNum, pageSize: pageSize);
}
