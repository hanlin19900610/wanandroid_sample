part of 'widgets.dart';

class OverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    if (getPlatform(context) == TargetPlatform.android ||
        getPlatform(context) == TargetPlatform.fuchsia) {
      return GlowingOverscrollIndicator(
        showLeading: false,
        showTrailing: false,
        axisDirection: details.direction,
        color: Theme.of(context).hintColor,
        child: child,
      );
    } else {
      return child;
    }
  }
}
