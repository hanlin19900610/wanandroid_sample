part of 'models.dart';
@freezed
class BannerBean with _$BannerBean {
  factory BannerBean({
    required String desc,
    required int id,
    required String imagePath,
    required int isVisible,
    required int order,
    required String title,
    required int type,
    required String url,
  }) = _BannerBean;

  factory BannerBean.fromJson(Map<String, dynamic> json) =>
      _$BannerBeanFromJson(json);
}
