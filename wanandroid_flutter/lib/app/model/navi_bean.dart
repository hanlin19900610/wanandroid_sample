part of 'models.dart';

@unfreezed
class NaviBean with _$NaviBean {
  factory NaviBean({
    List<ArticleBean>? articles,
    int? cid,
    String? name,
  }) = _NaviBean;

  factory NaviBean.fromJson(Map<String, dynamic> json) =>
      _$NaviBeanFromJson(json);
}
