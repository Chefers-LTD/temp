import 'package:app_module/src/router/routes/access_form_route.dart';
import 'package:app_module/src/view/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_route.g.dart';

final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<AppRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<AccessFormRoute>(
      path: '/',
    ),
  ],
)
class AppRouteData extends ShellRouteData {
  const AppRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      AppScaffold(
        navigator: navigator,
      );
}
