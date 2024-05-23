part of 'widgets.dart';

class MFAppScrollBehavior extends ScrollBehavior {
  const MFAppScrollBehavior();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics();
}
