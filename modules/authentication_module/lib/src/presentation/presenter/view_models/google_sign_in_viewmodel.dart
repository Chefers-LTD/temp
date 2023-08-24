import 'package:authentication_module/src/presentation/presenter/view_models/access_form_viewmodel.dart';
import 'package:authentication_module/src/providers/sign_in_with_google_use_case_provider.dart';
import 'package:core_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class GoogleSignInViewModel extends StateNotifier<bool> {
  /* *** *** Constructor *** *** */
  GoogleSignInViewModel() : super(false);

  Future<void> continueWithGoogle({
    required BuildContext context,
    required double width,
    required double height,
    required AccessFormViewModel accessFormViewModel,
    required WidgetRef ref,
  }) async {
    state = true;
    accessFormViewModel.loading = true;
    (await ref.read(signInWithGoogleUseCase).call()).fold(
      (failureModel) => {
        state = false,
        accessFormViewModel.loading = false,
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text(
              AppErrorModel.mapFailureToErrorObject(failure: failureModel)
                  .title,
            ),
          ),
        ),
      },
      (user) => {
        state = false,
        accessFormViewModel.loading = false,
        context.go('/'),
      },
    );
  }
}
