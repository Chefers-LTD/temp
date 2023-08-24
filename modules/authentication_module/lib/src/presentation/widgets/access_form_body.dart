import 'package:authentication_module/src/presentation/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccessFormBody extends ConsumerStatefulWidget {
  final bool isWeb;
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  final double width;
  final double height;

  const AccessFormBody({
    Key? key,
    required this.isWeb,
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  _AccessFormBodyState createState() => _AccessFormBodyState();
}

class _AccessFormBodyState extends ConsumerState<AccessFormBody> {
  /* *** *** Build *** *** */
  @override
  Widget build(BuildContext context) {
    return WelcomeView(
      height: widget.height,
      width: widget.width,
      isDesktop: widget.isDesktop,
      isMobile: widget.isMobile,
      isTablet: widget.isTablet,
      isWeb: widget.isWeb,
    );
  }
}
