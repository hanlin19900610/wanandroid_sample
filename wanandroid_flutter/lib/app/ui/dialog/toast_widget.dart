part of 'dialog_utils.dart';

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    required this.type,
    required this.alignment,
    required this.msg,
    super.key,
  });

  final ToastType type;

  final String msg;

  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    late Color background;

    switch (type) {
      case ToastType.success:
        background = context.theme.colorScheme.secondary;
      case ToastType.danger:
        background = context.theme.colorScheme.error;
      case ToastType.waring:
        background = context.theme.colorScheme.tertiary;
      case ToastType.tips:
        background =
        (context.theme.tooltipTheme.decoration as BoxDecoration?)!.color!;
    }

    return Align(
      alignment: alignment,
      child: Container(
        decoration: BoxDecoration(
          color: background.withOpacity(0.7),
          borderRadius: BorderRadius.circular(999.r),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 50.0,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Text(
          msg,
          style: context.theme.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

enum ToastType {
  success,
  danger,
  waring,
  tips,
}
