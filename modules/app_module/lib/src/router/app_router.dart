// class AppRouter extends VRouteElementBuilder {
//   AppRouter({required this.appInstance});
//   final AppViewModel appInstance;

//   @override
//   List<VRouteElement> buildRoutes() {
//     return [
//       UserNavigatorRouter(appInstance: appInstance),
//       ChefNavigatorRouter(appInstance: appInstance),
//     ];
//   }
// }

import 'package:app_module/src/router/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  routes: $appRoutes,
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
);
