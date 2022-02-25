import 'package:injectable/injectable.dart';

import '../../../../../core/base/type_defs.dart';
import '../../../../../core/base/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

/// {@template is_user_logged_in_usecase_template}
/// A [IUseCase] for checking if the user is currently logged in
/// the app.
/// {@endtemplate}
@lazySingleton
class IsUserLoggedIn implements IUseCase<User, NoParams> {
  /// {@macro is_user_logged_in_usecase_template}
  const IsUserLoggedIn(this.repository);

  /// The [IAuthRepository] to use for this usecase
  final IAuthRepository repository;

  @override
  FailureOr<User> call(NoParams params) async {
    return await repository.isUserLoggedIn();
  }
}
