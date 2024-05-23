import 'package:wanandroid_flutter_bloc/generated/json/base/json_convert_content.dart';
import 'package:wanandroid_flutter_bloc/models/user_bean.dart';

UserBean $UserBeanFromJson(Map<String, dynamic> json) {
  final UserBean userBean = UserBean();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userBean.id = id;
  }
  return userBean;
}

Map<String, dynamic> $UserBeanToJson(UserBean entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  return data;
}

extension UserBeanExtension on UserBean {
  UserBean copyWith({
    int? id,
  }) {
    return UserBean()
      ..id = id ?? this.id;
  }
}