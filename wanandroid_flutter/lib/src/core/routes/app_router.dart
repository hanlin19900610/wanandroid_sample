import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

import '../constants/instances.dart';

part 'app_router.g.dart';


@Riverpod()
GoRouter appRouter(AppRouterRef ref) {
  final GoRouter router = GoRouter(
    navigatorKey: Instances.rootNavigatorKey,
    initialLocation: const HomeRouteData().location,
    debugLogDiagnostics: kDebugMode,
    redirect: (BuildContext context, GoRouterState state){
      // 路由守卫
      return null;
    },
    errorBuilder: const UnknownRouteData().build,
    observers: <NavigatorObserver>[
      FlutterSmartDialog.observer,
      Instances.routeObserver
    ],
    routes: $appRoutes,
  );

  ref.onDispose(router.dispose);
  return router;
}