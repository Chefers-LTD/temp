import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';

import '../repositories/email_authentication_repository.dart';

class FetchSignInMethodsForEmailUseCase {
  final EmailAuthenticationRepository repository;

  FetchSignInMethodsForEmailUseCase(this.repository);

  Future<Either<FailureModel, List<String>>> call({
    required String email,
  }) =>
      repository.fetchSignInMethodsForEmail(email: email);
}
