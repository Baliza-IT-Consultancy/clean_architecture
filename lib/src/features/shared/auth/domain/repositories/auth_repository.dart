import '../../../../../core/base/type_defs.dart';
import '../dtos/auth_dtos.dart';
import '../entities/user_entity.dart';

/// The user auth repository.
abstract class IAuthRepository {
  /// create a new user using the given [email], [name] and [password].
  FailureOr<User> createAccount(SignupDTO signupDTO);

  /// checks if there is any logged in user and returns it
  /// else returns `null`.
  FailureOr<User> isUserLoggedIn();

  /// logs out the currently logged in user.
  FailureOr<void> logoutUser();

  /// logs in the user using the given [email] and [password].
  FailureOr<User> loginUser(LoginDTO loginDTO);
}
