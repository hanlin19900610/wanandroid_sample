part of 'app_route_datas.dart';

@TypedStatefulShellRoute<MainShellRouteData>(
  branches: [
    TypedStatefulShellBranch<HomeShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomeRouteData>(
          path: '/home',
        ),
      ]
    ),
    TypedStatefulShellBranch<NavShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<NavRouteData>(
          path: '/nav',
        ),
      ]
    ),
    TypedStatefulShellBranch<ProjectShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ProjectRouteData>(
          path: '/project',
        ),
      ]
    ),
    TypedStatefulShellBranch<MineShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<MineRouteData>(
          path: '/mine',
        ),
      ]
    ),
  ],
)
class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey =
      Instances.shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) =>
      MainPage(navigationShell: navigationShell);
}

class HomeShellBranchData extends StatefulShellBranchData{
  const HomeShellBranchData();
}

class NavShellBranchData extends StatefulShellBranchData{
  const NavShellBranchData();
}

class ProjectShellBranchData extends StatefulShellBranchData{
  const ProjectShellBranchData();
}

class MineShellBranchData extends StatefulShellBranchData{
  const MineShellBranchData();
}

class HomeRouteData extends GoRouteData{
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class NavRouteData extends GoRouteData{
  const NavRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NavPage();
  }
}

class ProjectRouteData extends GoRouteData{
  const ProjectRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProjectPage();
  }
}

class MineRouteData extends GoRouteData{
  const MineRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MinePage();
  }
}