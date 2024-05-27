
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../lib.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.message,
    this.detail,
    this.onRetry,
  }) : _assets = R.imagesEmpty;

  const EmptyWidget.favorites({
    super.key,
    this.message,
    this.detail,
    this.onRetry,
  }) : _assets = R.imagesFavoritesEmpty;

  const EmptyWidget.search({
    super.key,
    this.message,
    this.detail,
    this.onRetry,
  }) : _assets = R.imagesSearchEmpty;

  final String _assets;
  final String? message;
  final String? detail;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              _assets,
              width: 180,
            ),
            Text(
              message ?? S.of(context).empty,
              style: context.theme.textTheme.titleSmall,
            ),
            MFSizedBox(height: 5.h),
            Text(
              detail ?? S.of(context).emptyMsg,
              style: context.theme.textTheme.bodyMedium,
            ),
            if (onRetry != null) ...<Widget>[
              MFSizedBox.height(10.h),
              ElevatedButton(
                onPressed: onRetry,
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 32.0),
                  ),
                ),
                child: Text(S.of(context).retry),
              ),
            ],
          ],
        ),
      );
}
