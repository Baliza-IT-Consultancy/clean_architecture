import 'package:injectable/injectable.dart';

import '../../../../../core/base/type_defs.dart';
import '../../../../../core/base/usecase.dart';
import '../dtos/auth_dtos.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

/// {@template sign_in_user_usecase}
/// A [IUseCase] to sign_in an existing user
///
/// Takes an argument of type [UserSignInParam]
/// {@endtemplate}
@lazySingleton
class SignInUser extends IUseCase<User, LoginDTO> {
  /// {@macro sign_in_user_usecase}
  const SignInUser(this.repository);

  /// The [IAuthRepository] to use for this usecase
  final IAuthRepository repository;

  @override
  FailureOr<User> call(LoginDTO param) async {
    return await repository.loginUser(param);
  }
}
