import 'package:injectable/injectable.dart';

import '../../../../../core/base/type_defs.dart';
import '../../domain/dtos/auth_dtos.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';

/// A concrete implementation of [AuthRepository]
@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  @override
  FailureOr<User> createAccount(SignupDTO signupDTO) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  FailureOr<User?> isUserLoggedIn() {
    // TODO: implement isUserLoggedIn
    throw UnimplementedError();
  }

  @override
  FailureOr<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  FailureOr<User> signIn(LoginDTO loginDTO) {
    // TODO: implement singIn
    throw UnimplementedError();
  }
}
