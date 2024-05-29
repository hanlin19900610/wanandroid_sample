import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wanandroid_flutter/lib.dart';

class TreeLeftSide extends StatelessWidget {
  const TreeLeftSide({super.key, required this.name, required this.value, this.onChanged});

  final String name;
  final bool value;
  final Function? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onChanged?.call();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: value ? Colors.white: Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: value ? context.theme.primaryColor : Colors.black45,
            fontSize: 14.sp,
          ),
          maxLines: 1,
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}
