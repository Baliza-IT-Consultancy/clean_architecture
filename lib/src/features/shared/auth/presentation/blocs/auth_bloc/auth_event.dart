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

/// An Event of the [AuthBloc]
@freezed
class AuthEvent with _$AuthEvent {
  /// The [AuthEvent] for checking if the user is authenticated
  const factory AuthEvent.started() = _Started;

  /// The [AuthEvent] for logging in the user
  const factory AuthEvent.loggedIn(LoginPayload payload) = _LoggedIn;

  /// The [AuthEvent] for logging out the user
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
