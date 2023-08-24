import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_module/src/data_sources/firebase_data_source.dart';
import 'package:firebase_module/src/data_sources/firebase_data_source_interface.dart';
import 'package:firebase_module/src/use_cases/get_firebase_app_instance.dart';
import 'package:riverpod/riverpod.dart';

final firebaseProvider = Provider<FirebaseDataSourceInterface>((ref) {
  return FirebaseDataSource();
});

final getFirebaseAppInstanceProvider = Provider<GetFirebaseAppInstance>((ref) {
  return GetFirebaseAppInstance(
      firebaseDataSource: ref.watch(firebaseProvider));
});

final firebaseAuthenticationServiceProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final firebaseGoogleAuthenticationProvider =
    Provider<GoogleAuthProvider>((ref) {
  return GoogleAuthProvider();
});

final firebaseFacebookAuthenticationProvider =
    Provider<FacebookAuthProvider>((ref) {
  return FacebookAuthProvider();
});

final firebaseAppleAuthenticationProvider = Provider<AppleAuthProvider>((ref) {
  return AppleAuthProvider();
});

final firebaseUserProvider = StreamProvider.autoDispose<User?>(
    (ref) => FirebaseAuth.instance.authStateChanges());
