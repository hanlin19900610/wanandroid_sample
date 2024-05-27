// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeBannerBeanImpl _$$HomeBannerBeanImplFromJson(Map<String, dynamic> json) =>
    _$HomeBannerBeanImpl(
      desc: json['desc'] as String?,
      id: json['id'] as int?,
      imagePath: json['imagePath'] as String?,
      isVisible: json['isVisible'] as int?,
      order: json['order'] as int?,
      title: json['title'] as String?,
      type: json['type'] as int?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$HomeBannerBeanImplToJson(
        _$HomeBannerBeanImpl instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'id': instance.id,
      'imagePath': instance.imagePath,
      'isVisible': instance.isVisible,
      'order': instance.order,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };

_$ArticleBeanImpl _$$ArticleBeanImplFromJson(Map<String, dynamic> json) =>
    _$ArticleBeanImpl(
      adminAdd: json['adminAdd'] as bool?,
      apkLink: json['apkLink'] as String?,
      audit: json['audit'] as int?,
      author: json['author'] as String?,
      canEdit: json['canEdit'] as bool?,
      chapterId: json['chapterId'] as int?,
      chapterName: json['chapterName'] as String?,
      collect: json['collect'] as bool?,
      courseId: json['courseId'] as int?,
      desc: json['desc'] as String?,
      descMd: json['descMd'] as String?,
      envelopePic: json['envelopePic'] as String?,
      fresh: json['fresh'] as bool?,
      host: json['host'] as String?,
      id: json['id'] as int?,
      isAdminAdd: json['isAdminAdd'] as bool?,
      link: json['link'] as String?,
      niceDate: json['niceDate'] as String?,
      niceShareDate: json['niceShareDate'] as String?,
      origin: json['origin'] as String?,
      prefix: json['prefix'] as String?,
      projectLink: json['projectLink'] as String?,
      publishTime: json['publishTime'] as int?,
      realSuperChapterId: json['realSuperChapterId'] as int?,
      selfVisible: json['selfVisible'] as int?,
      shareDate: json['shareDate'] as int?,
      shareUser: json['shareUser'] as String?,
      superChapterId: json['superChapterId'] as int?,
      superChapterName: json['superChapterName'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ArticleTagsBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      type: json['type'] as int?,
      userId: json['userId'] as int?,
      visible: json['visible'] as int?,
      zan: json['zan'] as int?,
      isTop: json['isTop'] as bool? ?? false,
    );

Map<String, dynamic> _$$ArticleBeanImplToJson(_$ArticleBeanImpl instance) =>
    <String, dynamic>{
      'adminAdd': instance.adminAdd,
      'apkLink': instance.apkLink,
      'audit': instance.audit,
      'author': instance.author,
      'canEdit': instance.canEdit,
      'chapterId': instance.chapterId,
      'chapterName': instance.chapterName,
      'collect': instance.collect,
      'courseId': instance.courseId,
      'desc': instance.desc,
      'descMd': instance.descMd,
      'envelopePic': instance.envelopePic,
      'fresh': instance.fresh,
      'host': instance.host,
      'id': instance.id,
      'isAdminAdd': instance.isAdminAdd,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'niceShareDate': instance.niceShareDate,
      'origin': instance.origin,
      'prefix': instance.prefix,
      'projectLink': instance.projectLink,
      'publishTime': instance.publishTime,
      'realSuperChapterId': instance.realSuperChapterId,
      'selfVisible': instance.selfVisible,
      'shareDate': instance.shareDate,
      'shareUser': instance.shareUser,
      'superChapterId': instance.superChapterId,
      'superChapterName': instance.superChapterName,
      'tags': instance.tags,
      'title': instance.title,
      'type': instance.type,
      'userId': instance.userId,
      'visible': instance.visible,
      'zan': instance.zan,
      'isTop': instance.isTop,
    };

_$ArticleTagsBeanImpl _$$ArticleTagsBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleTagsBeanImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ArticleTagsBeanImplToJson(
        _$ArticleTagsBeanImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PaginationDataImpl<T> _$$PaginationDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationDataImpl<T>(
      curPage: json['curPage'] as int,
      datas: (json['datas'] as List<dynamic>).map(fromJsonT).toList(),
      offset: json['offset'] as int,
      pageCount: json['pageCount'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      over: json['over'] as bool? ?? false,
    );

Map<String, dynamic> _$$PaginationDataImplToJson<T>(
  _$PaginationDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'curPage': instance.curPage,
      'datas': instance.datas.map(toJsonT).toList(),
      'offset': instance.offset,
      'pageCount': instance.pageCount,
      'size': instance.size,
      'total': instance.total,
      'over': instance.over,
    };
