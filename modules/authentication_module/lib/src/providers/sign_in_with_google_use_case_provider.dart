import 'package:authentication_module/src/data/repositories/google_authentication_repository_impl.dart';
import 'package:authentication_module/src/domain/use_cases/sign_in_with_google_use_case.dart';
import 'package:authentication_module/src/providers/google_authentication_provider.dart';
import 'package:firebase_module/adapters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signInWithGoogleUseCase = Provider<SignInWithGoogleUseCase>((ref) {
  return SignInWithGoogleUseCase(
    GoogleAuthenticationRepositoryImpl(
      firebaseAuthentication: ref.read(firebaseAuthenticationServiceProvider),
      googleAuthentication: ref.read(googleAuthenticationProvider),
      firebaseGoogleAuthenticationProvider:
          ref.read(firebaseGoogleAuthenticationProvider),
    ),
  );
});
