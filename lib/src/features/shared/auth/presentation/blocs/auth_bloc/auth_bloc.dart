import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/base/usecase.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/create_new_user_usecase.dart';
import '../../../domain/usecases/is_user_loggedin_usecase.dart';
import '../../../domain/usecases/logout_user_usecase.dart';
import '../../../domain/usecases/signin_user_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

///{@template auth_bloc}
/// Bloc for handling authentication status
/// {@endtemplate}
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// {@macro auth_bloc}
  AuthBloc(
    this.isUserLoggedInUseCase,
    this.signInUser,
    this.createNewUser,
    this.logOutUser,
  ) : super(const _Initial()) {
    on<_Started>(_onStarted);

    on<_LoggedIn>(_onLoggedIn);

    on<_LoggedOut>(_onLoggedOut);

    on<_CreateAccount>(_onCreateAccount);
  }

  FutureOr<void> _onLoggedOut(event, emit) async {
    emit(const _Initial());
    emit(const _Unauthenticated("Logged out"));
  }

  FutureOr<void> _onCreateAccount(event, emit) async {
    emit(const _Initial());
    final result = await createNewUser(
      IUserCreateParam(
        email: event.payload.email,
        password: event.payload.password,
        name: event.payload.name,
      ),
    );

    result.fold(
      (l) => emit(_Unauthenticated(l.message)),
      (r) => emit(_Authenticated(r)),
    );
  }

  FutureOr<void> _onLoggedIn(event, emit) async {
    emit(const _Initial());
    final result = await signInUser(
      IUserSignInParam(
        email: event.payload.email,
        password: event.payload.password,
      ),
    );
    result.fold(
      (l) => emit(AuthState.unauthenticated(l.message)),
      (r) => emit(AuthState.authenticated(r)),
    );
  }

  FutureOr<void> _onStarted(event, emit) async {
    emit(const _Initial());
    final result = await isUserLoggedInUseCase(NoParams());
    result.fold(
      (l) => emit(_Unauthenticated(l.message)),
      (r) => emit(_Authenticated(r)),
    );
  }

  /// {@macro is_user_logged_in_usecase_template}
  final IsUserLoggedIn isUserLoggedInUseCase;

  /// {@macro sign_in_user_usecase}
  final SignInUser signInUser;

  /// {@macro create_new_user_usecase}
  final CreateNewUser createNewUser;

  /// {@macro logout_user_usecase}
  final LogOutUser logOutUser;
}
