import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_module/src/data_sources/firebase_data_source_interface.dart';

class GetFirebaseAppInstance {
  final FirebaseDataSourceInterface _firebaseDataSource;

  GetFirebaseAppInstance(
      {required FirebaseDataSourceInterface firebaseDataSource})
      : _firebaseDataSource = firebaseDataSource;

  Future<Either<FailureModel, FirebaseApp>> call() {
    return _firebaseDataSource.initializeApp();
  }
}
