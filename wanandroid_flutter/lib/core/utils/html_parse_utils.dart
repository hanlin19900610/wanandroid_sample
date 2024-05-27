import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:html_unescape/html_unescape.dart';
import 'package:wanandroid_flutter/lib.dart';


class HTMLParseUtils {
  HTMLParseUtils._();

  static String? unescapeHTML(String? text) => text.strictValue == null
      ? null
      : HtmlUnescape().convert(text.strictValue!);

  static List<String>? parseSearchResultArticleTile(String? title) =>
      parse(title.strictValue)
          .body
          ?.nodes
          .map<String?>((Node node) => node.text)
          .whereType<String>()
          .toList();
}
