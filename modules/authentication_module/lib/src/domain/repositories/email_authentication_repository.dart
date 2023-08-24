import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';

abstract class EmailAuthenticationRepository {
  Future<Either<FailureModel, List<String>>> fetchSignInMethodsForEmail({
    required String email,
  });
}
