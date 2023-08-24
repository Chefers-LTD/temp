import 'package:equatable/equatable.dart';

import '../failure_model/failure_model.dart';

class AppErrorModel extends Equatable {
  const AppErrorModel({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  List<Object?> get props => [title, message];

  static AppErrorModel mapFailureToErrorObject(
      {required FailureModel failure}) {
    return failure.when(
      firebaseInitializationFailure: () => const AppErrorModel(
        title: 'Firebase Initialization Failure',
        message: 'Firebase Initialization Failure',
      ),
      unhandledFailure: () => const AppErrorModel(
        title: 'Unhandled Failure',
        message: 'Unhandled Failure',
      ),
      googleSignInFailure: () => const AppErrorModel(
        title: 'Google Sign In Failure',
        message: 'Google Sign In Failure',
      ),
    );
  }
}
