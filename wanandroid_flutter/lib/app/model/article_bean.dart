part of 'models.dart';
@unfreezed
class ArticleBean with _$ArticleBean {
  factory ArticleBean({
    bool? adminAdd,
    String? apkLink,
    int? audit,
    String? author,
    bool? canEdit,
    int? chapterId,
    String? chapterName,
    bool? collect,
    int? courseId,
    String? desc,
    String? descMd,
    String? envelopePic,
    bool? fresh,
    String? host,
    int? id,
    bool? isAdminAdd,
    String? link,
    String? niceDate,
    String? niceShareDate,
    String? origin,
    String? prefix,
    String? projectLink,
    int? publishTime,
    int? realSuperChapterId,
    int? selfVisible,
    int? shareDate,
    String? shareUser,
    int? superChapterId,
    String? superChapterName,
    List<ArticleTagsBean?>? tags,
    String? title,
    int? type,
    int? userId,
    int? visible,
    int? zan,
    @JsonKey(includeFromJson: true) @Default(false) bool isTop,
  }) = _ArticleBean;

  factory ArticleBean.fromJson(Map<String, dynamic> json) =>
      _$ArticleBeanFromJson(json);
}

@unfreezed
class ArticleTagsBean with _$ArticleTagsBean {
  factory ArticleTagsBean({
    String? name,
    String? url,
  }) = _ArticleTagsBean;

  factory ArticleTagsBean.fromJson(Map<String, dynamic> json) =>
      _$ArticleTagsBeanFromJson(json);
}
