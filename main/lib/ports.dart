import 'package:firebase_module/adapters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temp/domain/use_cases/initialize_app.dart';

final firebaseAppInstanceProvider =
    FutureProvider((ref) => ref.watch(getFirebaseAppInstanceProvider).call());

final initializeAppProvider = Provider<InitializeApp>((ref) {
  return InitializeApp(
      getFirebaseAppInstance: ref.watch(getFirebaseAppInstanceProvider));
});
