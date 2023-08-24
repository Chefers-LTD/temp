import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';

import '../repositories/google_authentication_repository.dart';

class SignInWithGoogleUseCase {
  final GoogleAuthenticationRepository repository;

  SignInWithGoogleUseCase(this.repository);

  Future<Either<FailureModel, void>> call() => repository.signInWithGoogle();
}
