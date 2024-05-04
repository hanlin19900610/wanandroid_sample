part of 'ext.dart';

extension NumExt on num {

  /// 转换数字为字符串, 10以内的前面补0
  String get ten => this > 9 ? '$this' : '0$this';

  /// 转换数字最大值
  String formatMaxNum({int maxNum = 99}) {
    if (this > maxNum) {
      return '$maxNum+';
    }else{
      return '$this';
    }
  }


}