import '../../../lib.dart';

class NeedLogin implements BaseError {
  @override
  int get code => -1001;

  @override
  String get message => "请先登录";
}