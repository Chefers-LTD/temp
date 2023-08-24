import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBody extends ConsumerWidget {
  const AppBody({
    super.key,
    required this.navigator,
  });

  final Widget navigator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return navigator;
  }
}
