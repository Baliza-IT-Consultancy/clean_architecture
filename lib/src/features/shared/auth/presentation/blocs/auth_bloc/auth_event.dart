part of 'auth_bloc.dart';

/// {@template login_payload}
/// A payload for [_LoggedIn] event
/// {@endtemplate}
class LoginPayload {
  /// {@macro login_payload}
  const LoginPayload({
    required this.email,
    required this.password,
  });

  /// email of the logging in user
  final String email;

  /// password of the logging in user
  final String password;
}

/// {@template signup_payload}
/// A payload for [_CreateAccount] event
/// {@endtemplate}
class SignupPayload {
  /// {@macro signup_payload}
  const SignupPayload({
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
}

/// An Event of the [AuthBloc]
@freezed
class AuthEvent with _$AuthEvent {
  /// The [AuthEvent] for checking if the user is authenticated
  const factory AuthEvent.started() = _Started;

  /// The [AuthEvent] for creating a new user account.
  const factory AuthEvent.createAccount(SignupPayload payload) = _CreateAccount;

  /// The [AuthEvent] for logging in the user
  const factory AuthEvent.loggedIn(LoginPayload payload) = _LoggedIn;

  /// The [AuthEvent] for logging out the user
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
