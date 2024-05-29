part of 'models.dart';

@unfreezed
class TreeBean with _$TreeBean {
  factory TreeBean({
    List<dynamic>? articleList,
    String? author,
    List<TreeChildrenBean>? children,
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
  }) = _TreeBean;

  factory TreeBean.fromJson(Map<String, dynamic> json) =>
      _$TreeBeanFromJson(json);
}

@unfreezed
class TreeChildrenBean with _$TreeChildrenBean {
  factory TreeChildrenBean({
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
  }) = _TreeChildrenBean;

  factory TreeChildrenBean.fromJson(Map<String, dynamic> json) =>
      _$TreeChildrenBeanFromJson(json);
}
