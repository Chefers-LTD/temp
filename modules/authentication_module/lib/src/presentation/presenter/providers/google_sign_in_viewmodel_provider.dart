import 'package:authentication_module/src/presentation/presenter/view_models/google_sign_in_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final googleSignInViewModelProvider =
    StateNotifierProvider<GoogleSignInViewModel, bool>((ref) {
  return GoogleSignInViewModel();
});
