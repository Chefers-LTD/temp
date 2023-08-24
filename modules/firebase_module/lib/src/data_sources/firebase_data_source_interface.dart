import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class FirebaseDataSourceInterface {
  Future<Either<FailureModel, FirebaseApp>> initializeApp();
}
