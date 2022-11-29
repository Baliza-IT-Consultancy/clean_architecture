part of 'auth_bloc.dart';

/// A state of [AuthBloc]
@freezed
class AuthState with _$AuthState {
  /// Initial state of [AuthBloc]
  const factory AuthState.initial() = _Initial;

  /// State of [AuthBloc] when user is in the middle of authentication process
  /// or loading.
  const factory AuthState.authenticating() = _Authenticating;

  /// State of [AuthBloc] when user is being unauthenticated
  const factory AuthState.preUnauthenticated([String? message, String? code]) =
      _PreUnauthenticated;

  /// State of [AuthBloc] when user is unauthenticated
  const factory AuthState.unauthenticated([String? message, String? code]) =
      _Unauthenticated;

  /// State of [AuthBloc] when user is being authenticated
  const factory AuthState.preAuthenticated(User user) = _PreAuthenticated;

  /// State of [AuthBloc] when user is authenticated
  const factory AuthState.authenticated(User user) = _Authenticated;

  /// State of [AuthBloc] when the auth process encountered an error
  const factory AuthState.error(String message, String code) = _AuthError;
}
