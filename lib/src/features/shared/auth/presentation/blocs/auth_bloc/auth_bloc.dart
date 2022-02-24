import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/base/usecase.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/create_new_user_usecase.dart';
import '../../../domain/usecases/is_user_loggedin_usecase.dart';
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
  ) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Initial());
      final result = await isUserLoggedInUseCase(NoParams());
      result.fold(
        (l) => emit(_Unauthenticated(l.message)),
        (r) => emit(_Authenticated(r)),
      );
    });

    on<_LoggedIn>((event, emit) async {
      emit(const _Initial());

      // emit(_Authenticated(event.user));
    });

    on<_LoggedOut>((event, emit) async {
      emit(const _Initial());
      emit(const _Unauthenticated("Logged out"));
    });
  }

  /// {@macro is_user_logged_in_usecase_template}
  final IsUserLoggedIn isUserLoggedInUseCase;

  /// {@macro sign_in_user_usecase}
  final SignInUser signInUser;

  /// {@macro create_new_user_usecase}
  final CreateNewUser createNewUser;
}
