part of 'auth_bloc.dart';

/// Preferred set of event listeners
mixin AuthEventListeners on Bloc<AuthEvent, AuthState> {
  FutureOr<void> _onRestartProcess(event, emit) {
    emit(const _Initial());

    // TODO: we can add another event based on the state of auth user.

    // if (_auth.currentUser == null) {
    //   add(const AuthEvent.logout());
    // } else {
    //   add(const AuthEvent.waiting());
    // }
  }

  FutureOr<void> _onErrorOccurred(event, emit) {
    emit(AuthState.error(event.message, event.code));
  }

  FutureOr<void> _onWaiting(event, emit) {
    emit(AuthState.preAuthenticated(event.user));
  }

  FutureOr<void> _onLoggedOut(
    _LoggedOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.preUnauthenticated(event.message, event.code));
  }

  FutureOr<void> _onLoginSuccess(event, emit) {
    emit(AuthState.authenticated(event.user));
  }
}
