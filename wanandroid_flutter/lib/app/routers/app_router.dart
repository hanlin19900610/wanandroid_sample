import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'data/app_route_datas.dart';
import '../../lib.dart';

part 'app_router.g.dart';

@Riverpod(dependencies: <Object>[])
GoRouter appRouter(AppRouterRef ref) {
  final GoRouter router = GoRouter(
    navigatorKey: Instances.rootNavigatorKey,
    initialLocation: const HomeRouteData().location,
    debugLogDiagnostics: kDebugMode,
    redirect: (BuildContext context, GoRouterState state) {
      // 路由守卫  判断哪些路由需要先验证登录
      // if (<String>[
      //   const MyPointsRouteData().location,
      //   const MyCollectionsRouteData(type: CollectionType.article).location,
      //   const MyCollectionsRouteData(type: CollectionType.website).location,
      //   const MyShareRouteData().location,
      // ].contains(state.matchedLocation)) {
      //   return ref.read(authorizedProvider).valueOrNull != null
      //       ? null
      //       : const LoginRouteData().location;
      // }

      return null;
    },
    errorBuilder: const UnknownRouteData().build,
    observers: <NavigatorObserver>[
      FlutterSmartDialog.observer,
      Instances.routeObserver,
    ],
    routes: $appRoutes,
  );

  ref.onDispose(router.dispose);

  return router;
}