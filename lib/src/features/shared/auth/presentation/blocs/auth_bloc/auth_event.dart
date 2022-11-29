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

  //? NOTE
  //? Below are the preferred set of events

  /// The [AuthEvent] for login process is successfully executed.
  /// next state would be [AuthState.authenticated]
  const factory AuthEvent.loginSuccess(User user) = _LoginSuccess;

  /// The [AuthEvent] for waiting state of the [AuthBloc]
  /// when user is authenticated and the other services are being
  /// initialized!
  ///
  /// The next event will be [_LoginSuccess] once the services are initialized.
  const factory AuthEvent.waiting(User user) = _Waiting;

  /// This [AuthEvent] is thrown when the auth process encountered an error.
  const factory AuthEvent.authError(String message, String code) =
      _ErrorOccurred;

  /// The [AuthEvent] for logging out the user
  const factory AuthEvent.logout({String? message, String? code}) = _LoggedOut;

  /// The [AuthEvent] when the user is logged out after all the services are
  /// disposed.
  ///
  /// **NOTE**:
  /// This event is internally called by [AuthBloc] listener
  /// when the user request to logout and the other services are disposed!
  ///
  /// **To logout the user, the user should call [AuthBloc.logout] only**
  const factory AuthEvent.finishLogout() = _FinishLogout;

  /// This event will restart the auth check process in case of
  /// an error encountered while checking for auth state.
  const factory AuthEvent.restartProcess() = _RestartProcess;
}
