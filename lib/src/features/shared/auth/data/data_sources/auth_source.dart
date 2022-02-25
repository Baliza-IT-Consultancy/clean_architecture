import 'package:injectable/injectable.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure_codes.dart';
import '../../domain/dtos/auth_dtos.dart';
import '../../domain/entities/user_entity.dart';

/// A data source that can perform a user auth operation.
abstract class IAuthSource {
  /// Performs a user creation operation and returns the created user.
  Future<User> createAccount(SignupDTO signupDTO);

  /// Performs a user login operation and returns the logged user.
  Future<User> loginUser(LoginDTO loginDTO);

  /// Performs a user logout operation.
  Future<void> logoutUser();

  /// Performs a check if user is logged in.
  Future<User> isUserLoggedIn();
}

/// {@template auth_source_local}
/// A Concrete implementation of [IAuthSource] that uses Local Storage.
/// {@endtemplate}
@LazySingleton(as: IAuthSource)
class LocalAuthSource implements IAuthSource {
  @override
  Future<User> createAccount(SignupDTO signupDTO) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<User> isUserLoggedIn() {
    // TODO: implement isUserLoggedIn
    throw const GeneralException(
      'User not authenticated!',
      FailureCodes.UNAUTHENTICATED,
    );
  }

  @override
  Future<User> loginUser(LoginDTO loginDTO) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }

  @override
  Future<void> logoutUser() {
    // TODO: implement logoutUser
    throw UnimplementedError();
  }
}
