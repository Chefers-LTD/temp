import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_module/adapters.dart';

class InitializeApp {
  final GetFirebaseAppInstance _getFirebaseAppInstance;

  InitializeApp({
    required GetFirebaseAppInstance getFirebaseAppInstance,
  }) : _getFirebaseAppInstance = getFirebaseAppInstance;

  Future<Either<FailureModel, FirebaseApp>> call() async {
    return await _getFirebaseAppInstance();
  }
}
