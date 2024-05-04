part of 'app_route_datas.dart';


class UnknownRouteData extends GoRouteData {
  const UnknownRouteData();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      Instances.rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UnknownScreen(
      state: state,
    );
  }
}
