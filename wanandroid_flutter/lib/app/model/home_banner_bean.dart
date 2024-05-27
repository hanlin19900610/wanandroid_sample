part of 'models.dart';

@unfreezed
class HomeBannerBean with _$HomeBannerBean {
  factory HomeBannerBean({
    String? desc,
    int? id,
    String? imagePath,
    int? isVisible,
    int? order,
    String? title,
    int? type,
    String? url,
  }) = _HomeBannerBean;

  factory HomeBannerBean.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerBeanFromJson(json);
}
