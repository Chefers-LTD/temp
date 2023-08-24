import 'package:app_module/src/view/widgets/app_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppScaffold extends ConsumerWidget {
  const AppScaffold({Key? key, required this.navigator}) : super(key: key);
  final Widget navigator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: AppBody(
        navigator: navigator,
      ),
    );
  }
}
