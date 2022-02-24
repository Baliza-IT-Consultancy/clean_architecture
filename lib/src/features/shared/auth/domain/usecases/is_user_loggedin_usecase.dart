import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/usecase.dart';
import '../../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

/// {@template is_user_logged_in_usecase_template}
/// A [UseCase] for checking if the user is currently logged in
/// the app.
/// {@endtemplate}
@lazySingleton
class IsUserLoggedIn implements UseCase<User, NoParams> {
  /// {@macro is_user_logged_in_usecase_template}
  // IsUserLoggedInUseCase(this.repository);

  // final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    // return await repository.isUserLoggedIn();
    await Future.delayed(const Duration(seconds: 1));
    // return Right(User.empty());
    return Left(
      Failure(message: "User not authenticated", code: "UNAUTHORIZED"),
    );
  }
}
