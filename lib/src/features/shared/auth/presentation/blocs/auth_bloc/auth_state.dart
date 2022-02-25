part of 'auth_bloc.dart';

/// A state of [AuthBloc]
@freezed
class AuthState with _$AuthState {
  /// Initial state of [AuthBloc]
  const factory AuthState.initial() = _Initial;

  /// State of [AuthBloc] when user is unauthenticated
  const factory AuthState.unauthenticated([String? message, String? code]) =
      _Unauthenticated;

  /// State of [AuthBloc] when user is authenticated
  const factory AuthState.authenticated(User user) = _Authenticated;
}
