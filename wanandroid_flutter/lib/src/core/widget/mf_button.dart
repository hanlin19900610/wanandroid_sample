part of 'widgets.dart';

/// 封装通用按钮
class MFButton extends StatelessWidget {
  const MFButton({
    super.key,
    this.width,
    this.height,
    this.margin,
    required this.child,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  final Widget child;

  factory MFButton.elevated({
    double? width,
    double? height,
    EdgeInsetsGeometry? margin,
    required Widget child,
    double? elevation,
    Color? backgroundColor,
    BorderRadiusGeometry? borderRadius,
    BorderSide? side,
    required VoidCallback onPressed,
  }) {
    return MFButton(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.zero,
          ),
          side: side,
        ),
        child: child,
      ),
    );
  }

  factory MFButton.text({
    double? width,
    double? height,
    EdgeInsetsGeometry? margin,
    required Widget child,
    double? elevation,
    Color? backgroundColor,
    BorderRadiusGeometry? borderRadius,
    BorderSide? side,
    required VoidCallback onPressed,
  }) {
    return MFButton(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: elevation ?? 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.zero,
          ),
          side: side,
        ),
        child: child,
      ),
    );
  }

  factory MFButton.outlined({
    double? width,
    double? height,
    EdgeInsetsGeometry? margin,
    required Widget child,
    double? elevation,
    Color? backgroundColor,
    BorderRadiusGeometry? borderRadius,
    BorderSide? side,
    required VoidCallback onPressed,
  }) {
    return MFButton(
      width: width,
      height: height,
      margin: margin,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          elevation: elevation ?? 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.zero,
          ),
          side: side,
        ),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? EdgeInsets.zero,
      child: child,
    );
  }
}
