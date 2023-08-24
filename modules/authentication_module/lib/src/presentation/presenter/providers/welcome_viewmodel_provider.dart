import 'package:authentication_module/src/presentation/presenter/view_models/welcome_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final welcomeViewModelProvider =
    StateNotifierProvider<WelcomeViewModel, bool>((ref) {
  return WelcomeViewModel();
});
