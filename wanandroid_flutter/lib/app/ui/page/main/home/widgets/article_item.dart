import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wanandroid_flutter/core/utils/html_parse_utils.dart';
import 'package:wanandroid_flutter/lib.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.article});

  final ArticleBean article;

  final Widget textSpace = const Text(
    ' • ',
    style: TextStyle(wordSpacing: 2),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            MFSizedBox.height(5.h),
            _buildContent(context),
            MFSizedBox.height(15.h),
            _buildBottom(context),
          ],
        ),
      ),
    );
  }

  /// 构建标题
  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          article.author != null && article.author?.isNotEmpty == true
              ? article.author!
              : article.shareUser!,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black,
          ),
        ),
        Text(article.publishTime?.toDateTimeTranslation(context) ?? ''),
        Text(article.chapterName ?? '')
      ].fold<List<Widget>>(
        <Widget>[],
        (List<Widget> children, Widget child) =>
            <Widget>[...children, child, textSpace],
      )..removeLast(),
    );
  }

  /// 构建标题
  Widget _buildContent(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        if (article.isTop)
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: _TagTile(
              text: S.of(context).top,
              color: context.theme.colorScheme.error,
            ),
          ),
        if (article.fresh == true)
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: _TagTile(
              text: S.of(context).fresh,
              color: context.theme.primaryColor,
            ),
          ),
        TextSpan(
            text: HTMLParseUtils.unescapeHTML(article.title),
            style: context.theme.textTheme.titleSmall!)
      ], style: TextStyle(color: Colors.black, fontSize: 12.sp)),
    );
  }

  /// 构建标题
  Widget _buildBottom(BuildContext context) {
    final bool isShare = article.author.strictValue == null;
    return Wrap(
      spacing: 8.w,
      children: [
        _TagTile(
          text: isShare ? S.of(context).share : S.of(context).original,
          color: context.theme.hintColor,
        ),
        ...article.tags
                ?.map(
                  (ArticleTagsBean? tag) => _TagTile(
                    key: UniqueKey(),
                    text: HTMLParseUtils.unescapeHTML(tag?.name) ?? '',
                    color: context.theme.hintColor,
                  ),
                )
                .toList() ??
            <Widget>[],
      ],
    );
  }
}

class _TagTile extends StatelessWidget {
  const _TagTile({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Widget child = Material(
      color: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(4.r),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 1.h,
        ),
        child: Text(
          text,
          style: context.theme.textTheme.bodySmall!.copyWith(
            color: color,
            fontSize: 10.sp,
            height: 1.4,
          ),
        ),
      ),
    );
    return Padding(
      padding: EdgeInsets.only(right: 4.w),
      child: child,
    );
  }
}
