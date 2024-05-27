import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../lib.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.statusCode,
    this.message,
    this.onRetry,
  });

  CustomErrorWidget.withOtherError(
    OtherError viewError, {
    super.key,
    this.onRetry,
  })  : statusCode = viewError.statusCode,
        message = viewError.message;

  final int? statusCode;
  final String? message;
  final VoidCallback? onRetry;

  bool get isDisconnected => statusCode == kNetworkExceptionStatusCode;

  String get errorImage {
    switch (statusCode) {
      case kTimeoutStatusCode:
      case kCancelRequestStatusCode:
        return R.imagesTimeout;
      case 400:
      case 403:
        return R.images400;
      case 404:
        return R.images404;
      case 500:
      case 503:
        return R.images500;
      default:
        return R.imagesUnknownError;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 32.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              errorImage,
              width: 120,
            ),
            Text(
              isDisconnected
                  ? S.of(context).networkException
                  : message ?? S.of(context).unknownError,
              style: context.theme.textTheme.titleSmall,
            ),
            MFSizedBox(height: 5.h),
            if (onRetry != null) ...<Widget>[
              MFSizedBox(height: 5.h),
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
      ),
    );
  }
}
