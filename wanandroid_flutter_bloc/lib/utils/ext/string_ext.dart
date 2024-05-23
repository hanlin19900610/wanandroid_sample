import 'dart:convert';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:wanandroid_flutter_bloc/utils/color_util.dart';

extension StringExt on String? {
  /// 字符串转颜色
  Color c() {
    return ColorUtil.fromHex(this ?? '#FFFFFFFF');
  }

  /// 是否为空
  bool isEmpty() {
    return this == null || this?.length == 0;
  }

  bool isNotEmpty() {
    return this != null && this?.length != 0;
  }

  String urlEncode({bool encodeFull = true}) {
    if (encodeFull) {
      return Uri.encodeFull(this ?? '');
    }
    return Uri.encodeComponent(this ?? '');
  }

  String urlDecode({bool decodeFull = true}) {
    if (decodeFull) {
      return Uri.decodeFull(this ?? '');
    }
    return Uri.decodeComponent(this ?? '');
  }

  ///空字符串整体替换
  String emptyReplace({String defaultValue = 'unknown'}) {
    if (isEmpty()) {
      return defaultValue;
    }
    return this!;
  }

  ///指定位置替换星号
  String replaceSpecificCharacter(String character, int start,
      {int end = 0, bool isEvery = false}) {
    if (isEmpty()) {
      return '';
    }
    if (end == 0) {
      end = this!.length;
    }
    if (isEvery) {
      StringBuffer sb = StringBuffer();
      for (int i = 0; i < end - start; i++) {
        sb.write(character);
      }
      character = sb.toString();
    }

    return this!.replaceRange(start, end, character);
  }

  String substring(int start, {int? end}) {
    if (isEmpty()) return '';
    return this!.substring(start, end);
  }

  ///格式化银行卡号
  String getFormatBankCard() {
    if (isEmpty()) {
      return '';
    }
    if (this!.length != 19) {
      return this!;
    }

    StringBuffer sb = StringBuffer();
    sb.write(substring(0, end: 4));
    sb.write(' ');

    sb.write(substring(4, end: 8));
    sb.write(' ');

    sb.write(substring(8, end: 12));
    sb.write(' ');

    sb.write(substring(12, end: 16));
    sb.write(' ');

    sb.write(substring(16));
    sb.write(' ');

    return sb.toString();
  }

  /// 计算字符串宽高
  double calculateTextHeight(
    BuildContext context,
    FontWeight fontWeight,
    fontSize,
    double maxWidth,
    int maxLines,
  ) {
    if (isEmpty()) {
      return 0.0;
    }

    TextPainter painter = TextPainter(
      locale: Localizations.localeOf(context),
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: this,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );

    painter.layout(maxWidth: maxWidth);

    return painter.width;
  }

  /// 判断字符串是否为数字（包含正副小数点）
  bool isDecimal() {
    // 正则表达式模式
    String pattern = r'^[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?$';
    RegExp regex = RegExp(pattern);

    // 检查输入是否匹配模式
    return regex.hasMatch(this ?? '');
  }

  /// 判断字符串是否是JSON字符串
  bool isJsonString() {
    try {
      json.decode(this ?? '');
    } catch (e) {
      return false;
    }
    return true;
  }

  /// 判断本地文件是否为图片
  bool isFilePicture() {
    if (isEmpty()) {
      return false;
    }
    var filePath = this!.toLowerCase();
    if (filePath.endsWith('.jpg') || filePath.endsWith('.png') || filePath.endsWith('.jpeg')) {
      return true;
    } else {
      return false;
    }
  }

  // 图片路径
  String imagePath({String? dirName, bool ispng = true}) {
    var name = this ?? '';
    if (!name.contains(".png") || !name.contains(".webp")) {
      name = ispng ? "$name.png" : "$name.webp";
    }
    return dirName != null ? "assets/images/$dirName/$name" : "assets/images/$name";
  }
}
