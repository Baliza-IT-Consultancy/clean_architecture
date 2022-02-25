/// {@template login_dto}
/// A DTO for signing in a user.
/// {@endtemplate}
class LoginDTO {
  /// {@macro login_dto}
  const LoginDTO({
    required this.email,
    required this.password,
  });

  /// email of the logging in user
  final String email;

  /// password of the logging in user
  final String password;
}

/// {@template signup_dto}
/// A DTO for creating a new user.
/// {@endtemplate}
class SignupDTO {
  /// {@macro signup_dto}
  const SignupDTO({
    required this.name,
    required this.email,
    required this.password,
  });

  /// name of signing up user
  final String name;

  /// email of the user
  final String email;

  /// password of the user
  final String password;

  /// serialize the object to json
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
