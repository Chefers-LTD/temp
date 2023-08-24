import 'dart:developer';

import 'package:app_module/src/router/app_router.dart';
import 'package:core_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppView extends ConsumerStatefulWidget {
  const AppView({
    Key? key,
    this.failureModel,
  }) : super(key: key);
  final FailureModel? failureModel;
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends ConsumerState<AppView> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);
  }

  /* *** *** Build *** *** */
  @override
  Widget build(BuildContext context) {
    log(widget.failureModel.toString());
    /* *** *** Providers *** *** */
    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.chefsMainTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalization.delegate,
      ],
      supportedLocales: AppLocalization.supportedLocales,
    );
  }
}
