// ignore_for_file: flutter_style_todos

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/base/usecase.dart';
import '../../../../../../core/error/failure_codes.dart';
import '../../../domain/dtos/auth_dtos.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/create_new_user_usecase.dart';
import '../../../domain/usecases/is_user_loggedin_usecase.dart';
import '../../../domain/usecases/logout_user_usecase.dart';
import '../../../domain/usecases/signin_user_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_event_listeners.dart';
part 'auth_state.dart';

///{@template auth_bloc}
/// Bloc for handling authentication status
/// {@endtemplate}
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> with AuthEventListeners {
  /// {@macro auth_bloc}
  AuthBloc(
    this.isUserLoggedInUseCase,
    this.signInUser,
    this.createNewUser,
    this.logOutUser,
  ) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_CreateAccount>(_onCreateAccount);

    //  Below are the preferred set of event actions
    on<_LoggedOut>(_onLoggedOut);
    on<_Waiting>(_onWaiting);
    on<_ErrorOccurred>(_onErrorOccurred);
    on<_FinishLogout>(_onFinishLogout);
    on<_RestartProcess>(_onRestartProcess);
    on<_LoginSuccess>(_onLoginSuccess);
  }

  /// {@macro is_user_logged_in_usecase_template}
  final IsUserLoggedIn isUserLoggedInUseCase;

  /// {@macro sign_in_user_usecase}
  final SignInUser signInUser;

  /// {@macro create_new_user_usecase}
  final CreateNewUser createNewUser;

  /// {@macro logout_user_usecase}
  final LogOutUser logOutUser;

  FutureOr<void> _onCreateAccount(
      _CreateAccount event, Emitter<AuthState> emit) async {
    emit(const _Initial());
    final result = await createNewUser(event.payload);

    result.fold(
      (l) => emit(_Unauthenticated(l.message, l.code)),
      (r) => emit(_PreAuthenticated(r)),
    );
  }

  FutureOr<void> _onLoggedIn(_LoggedIn event, Emitter<AuthState> emit) async {
    emit(const _Initial());
    final result = await signInUser(event.payload);
    result.fold(
      (l) => emit(AuthState.unauthenticated(l.message, l.code)),
      (r) => emit(AuthState.preAuthenticated(r)),
    );
  }

  FutureOr<void> _onStarted(_Started event, Emitter<AuthState> emit) async {
    final result = await isUserLoggedInUseCase(const NoParams());
    result.fold(
      (l) => emit(_Unauthenticated(l.message, l.code)),
      (r) => emit(_PreAuthenticated(r)),
    );
  }

  /// finally logout user
  FutureOr<void> _onFinishLogout(event, emit) async {
    final currentState = state as _PreUnauthenticated;

    final result = await logOutUser(const NoParams());
    result.fold(
      (l) => emit(_Unauthenticated(l.message, l.code)),
      (r) => emit(
        _Unauthenticated(
          currentState.message,
          FailureCodes.LOGGED_OUT,
        ),
      ),
    );
  }
}
