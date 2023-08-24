import 'dart:async';
import 'dart:developer';

import 'package:authentication_module/src/presentation/presenter/view_models/access_form_viewmodel.dart';
import 'package:authentication_module/src/providers/fetch_sign_in_methods_for_email_use_case_provider.dart';
import 'package:core_module/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WelcomeViewModel extends StateNotifier<bool> {
  /* *** *** Constructor *** *** */
  WelcomeViewModel() : super(false);

  /* *** *** Methods *** *** */

  Future<void> verifyEmail({
    required BuildContext context,
    required double width,
    required double height,
    required GlobalKey<FormState> formKeyEmail,
    required String email,
    required AccessFormViewModel accessFormViewModel,
    required WidgetRef ref,
  }) async {
    if (formKeyEmail.currentState!.validate()) {
      formKeyEmail.currentState!.save();
      state = true;
      accessFormViewModel.loading = true;
      (await ref.read(fetchSignInMethodsForEmailUseCase).call(email: email))
          .fold(
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
        (signInMethods) => {
          log("TEST SignInMethods $signInMethods"),
          state = false,
          accessFormViewModel.loading = false,
        },
      );
    }
  }
}
