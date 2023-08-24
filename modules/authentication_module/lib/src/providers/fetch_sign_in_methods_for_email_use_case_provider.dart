import 'package:authentication_module/src/data/repositories/email_authentication_repository_impl.dart';
import 'package:authentication_module/src/domain/use_cases/fetch_sign_in_methods_for_email_use_case.dart';
import 'package:firebase_module/adapters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchSignInMethodsForEmailUseCase =
    Provider<FetchSignInMethodsForEmailUseCase>((ref) {
  return FetchSignInMethodsForEmailUseCase(
    EmailAuthenticationRepositoryImpl(
      firebaseAuthentication: ref.read(firebaseAuthenticationServiceProvider),
    ),
  );
});
