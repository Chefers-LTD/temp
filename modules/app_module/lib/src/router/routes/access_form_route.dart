import 'package:authentication_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@immutable
class AccessFormRoute extends GoRouteData {
  @override
  CustomTransitionPage<void> buildPage(
          BuildContext context, GoRouterState state) =>
      CustomTransitionPage(
        key: state.pageKey,
        child: AccessFormView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // Change the opacity of the screen using a Curve based on the the animation's
          // value
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          );
        },
      );
}
