part of 'models.dart';

@unfreezed
class WxArticleBean with _$WxArticleBean {
  factory WxArticleBean({
    List<dynamic>? articleList,
    String? author,
    List<dynamic>? children,
    int? courseId,
    String? cover,
    String? desc,
    int? id,
    String? lisense,
    String? lisenseLink,
    String? name,
    int? order,
    int? parentChapterId,
    int? type,
    bool? userControlSetTop,
    int? visible,
  }) = _WxArticleBean;

  factory WxArticleBean.fromJson(Map<String, dynamic> json) =>
      _$WxArticleBeanFromJson(json);
}
