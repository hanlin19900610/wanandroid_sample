import 'package:wanandroid_flutter_bloc/generated/json/base/json_field.dart';
import 'package:wanandroid_flutter_bloc/generated/json/user_bean.g.dart';
import 'dart:convert';
export 'package:wanandroid_flutter_bloc/generated/json/user_bean.g.dart';

@JsonSerializable()
class UserBean {
	int? id = 0;

	UserBean();

	factory UserBean.fromJson(Map<String, dynamic> json) => $UserBeanFromJson(json);

	Map<String, dynamic> toJson() => $UserBeanToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}