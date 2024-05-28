import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wanandroid_flutter/lib.dart';

class WxArticleItem extends StatelessWidget {
  WxArticleItem({super.key, required this.wx});

  final WxArticleBean wx;

  final List<Color> colors = [
    Colors.amber,
    Colors.cyan,
    Colors.purpleAccent,
    Colors.deepOrangeAccent,
  ];

  String getImage(int? id) {
    return 'assets/images/wxarticle$id.png';
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          ToastUtils.show('点击公众号: ${wx.name}');
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: colors.random(1).first,
            borderRadius: BorderRadius.circular(10.r),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                getImage(wx.id),
                width: 40.w,
                height: 40.w,
                fit: BoxFit.cover,
              ),
              MFSizedBox.height(10.h),
              Text(
                wx.name ?? '',
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
