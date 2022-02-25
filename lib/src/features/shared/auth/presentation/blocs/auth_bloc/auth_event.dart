part of 'auth_bloc.dart';

/// An Event of the [AuthBloc]
@freezed
class AuthEvent with _$AuthEvent {
  /// The [AuthEvent] for checking if the user is authenticated
  const factory AuthEvent.started() = _Started;

  /// The [AuthEvent] for creating a new user account.
  const factory AuthEvent.createAccount(SignupDTO payload) = _CreateAccount;

  /// The [AuthEvent] for logging in the user
  const factory AuthEvent.loggedIn(LoginDTO payload) = _LoggedIn;

  /// The [AuthEvent] for logging out the user
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
