import 'package:authentication_module/src/domain/repositories/google_authentication_repository.dart';
import 'package:core_module/adapters.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthenticationRepositoryImpl
    implements GoogleAuthenticationRepository {
  GoogleAuthenticationRepositoryImpl({
    required this.firebaseAuthentication,
    required this.googleAuthentication,
    required this.firebaseGoogleAuthenticationProvider,
  });

  final FirebaseAuth firebaseAuthentication;
  final GoogleSignIn googleAuthentication;
  final GoogleAuthProvider firebaseGoogleAuthenticationProvider;

  @override
  Future<Either<FailureModel, UserCredential>> signInWithGoogle() async {
    if (kIsWeb) {
      try {
        // Create a new provider
        firebaseGoogleAuthenticationProvider
            .addScope('https://www.googleapis.com/auth/userinfo.profile');
        firebaseGoogleAuthenticationProvider
            .addScope('https://www.googleapis.com/auth/userinfo.email');
        firebaseGoogleAuthenticationProvider
            .setCustomParameters({'login_hint': 'user@example.com'});

        // Once signed in, return the UserCredential
        return Right(await firebaseAuthentication.signInWithPopup(
          firebaseGoogleAuthenticationProvider,
        ));
      } on FirebaseAuthException catch (e) {
        switch (e.code) {
          default:
            return const Left(
              GoogleSignInFailure(),
            );
        }
      } catch (e) {
        return const Left(
          GoogleSignInFailure(),
        );
      }
    } else {
      // Trigger the sign-in flow
      try {
        // Trigger the authentication flow
        final GoogleSignInAccount? googleUser =
            await googleAuthentication.signIn();

        // Obtain the auth details from the request
        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        // Once signed in, return the UserCredential
        return Right(
          await firebaseAuthentication.signInWithCredential(
            credential,
          ),
        );
      } on FirebaseAuthException catch (e) {
        switch (e.code) {
          default:
            return const Left(
              GoogleSignInFailure(),
            );
        }
      } catch (e) {
        return const Left(
          GoogleSignInFailure(),
        );
      }
    }
  }
}
