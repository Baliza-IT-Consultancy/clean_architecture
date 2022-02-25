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
  Future<User?> isUserLoggedIn();
}
