
import '../generated/json/base/json_convert_content.dart';

class ResponseModel<T> {
  T? data;
  int? code;
  String? message;

  ResponseModel({
    required this.data,
    required this.code,
    required this.message,
  });

  ResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null && json['data'] != 'null') {
      data = JsonConvert.fromJsonAsT<T>(json['data']);
    }
    code = json['errorCode'];
    message = json['errorMsg'];
  }

  /// 是否成功
  get isSucceed => code == 200;

  String get errorMessage => message ?? '';

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data;
    }
    data['errorCode'] = this.code;
    data['errorMsg'] = this.message;
    return data;
  }
}
