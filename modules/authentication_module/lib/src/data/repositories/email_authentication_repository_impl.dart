import 'package:authentication_module/src/domain/repositories/email_authentication_repository.dart';
import 'package:core_module/adapters.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_module/adapters.dart';

class EmailAuthenticationRepositoryImpl
    implements EmailAuthenticationRepository {
  final FirebaseAuth firebaseAuthentication;
  // final Ref providerRef;

  EmailAuthenticationRepositoryImpl({
    required this.firebaseAuthentication,
    // required this.providerRef,
  });

  @override
  Future<Either<FailureModel, List<String>>> fetchSignInMethodsForEmail({
    required String email,
  }) async {
    try {
      return Right(
        await firebaseAuthentication.fetchSignInMethodsForEmail(email),
      );
    } catch (e) {
      return const Left(
        UnhandledFailure(),
      );
    }
  }
}
