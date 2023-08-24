import 'package:authentication_module/src/presentation/widgets/access_form_body.dart';
import 'package:core_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccessFormView extends ConsumerStatefulWidget {
  const AccessFormView({Key? key}) : super(key: key);

  @override
  _AccessFormViewState createState() => _AccessFormViewState();
}

class _AccessFormViewState extends ConsumerState<AccessFormView> {
  /* *** *** Build *** *** */
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      child: (isWeb, isMobile, isTablet, isDesktop, width, height) => Scaffold(
        body: AccessFormBody(
          isWeb: isWeb,
          isMobile: isMobile,
          isTablet: isTablet,
          isDesktop: isDesktop,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
