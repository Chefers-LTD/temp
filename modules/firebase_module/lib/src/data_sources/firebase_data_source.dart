import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_module/src/firebase_options/firebase_options.dart';

import 'firebase_data_source_interface.dart';

class FirebaseDataSource extends FirebaseDataSourceInterface {
  @override
  Future<Either<FailureModel, FirebaseApp>> initializeApp() async {
    try {
      return Right(
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
      );
    } catch (e) {
      return const Left(
        FirebaseInitializationFailure(),
      );
    }
  }
}
