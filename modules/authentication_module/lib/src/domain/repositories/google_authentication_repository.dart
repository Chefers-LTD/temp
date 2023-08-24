import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_module/adapters.dart';

abstract class GoogleAuthenticationRepository {
  Future<Either<FailureModel, UserCredential>> signInWithGoogle();
}
