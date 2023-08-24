import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temp/presentation/presenter/providers/initialize_app_provider.dart';
import 'package:temp/presentation/presenter/view_models/main_view_model.dart';

final mainProvider = StateNotifierProvider<MainViewModel, Widget?>((ref) {
  return MainViewModel(
    initializeApp: ref.watch(initializeAppProvider),
  );
});
