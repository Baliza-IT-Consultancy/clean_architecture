import 'package:injectable/injectable.dart';

import '../../../../../core/base/type_defs.dart';
import '../../../../../core/base/usecase.dart';
import '../dtos/auth_dtos.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

/// {@template create_new_user_usecase}
/// A [IUseCase] to create a new user
///
/// Takes an argument of type [UserCreateParam]
/// {@endtemplate}
@lazySingleton
class CreateNewUser extends IUseCase<User, SignupDTO> {
  /// {@macro create_new_user_usecase}
  const CreateNewUser(this.repository);

  /// The [IAuthRepository] to use for this usecase
  final IAuthRepository repository;

  @override
  FailureOr<User> call(SignupDTO param) async {
    return await repository.createAccount(param);
  }
}
