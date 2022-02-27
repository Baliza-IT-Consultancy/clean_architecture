// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/device/network/network_info.dart' as _i3;
import '../../external/local_db.dart' as _i4;
import '../../features/home/data/repository/todo_repository.dart' as _i8;
import '../../features/home/data/sources/todo_source/local_source.dart' as _i5;
import '../../features/home/domain/repositories/todo_repository.dart' as _i7;
import '../../features/home/domain/usecases/add_update_todo_usecase.dart'
    as _i9;
import '../../features/home/domain/usecases/delete_todo_usecase.dart' as _i10;
import '../../features/home/domain/usecases/get_all_todo_usecase.dart' as _i11;
import '../../features/home/presentation/blocs/todo_bloc/todo_bloc.dart'
    as _i17;
import '../../features/shared/auth/data/repositories/auth_repository_impl.dart'
    as _i13;
import '../../features/shared/auth/data/sources/auth_source.dart' as _i6;
import '../../features/shared/auth/domain/repositories/auth_repository.dart'
    as _i12;
import '../../features/shared/auth/domain/usecases/create_new_user_usecase.dart'
    as _i18;
import '../../features/shared/auth/domain/usecases/is_user_loggedin_usecase.dart'
    as _i14;
import '../../features/shared/auth/domain/usecases/logout_user_usecase.dart'
    as _i15;
import '../../features/shared/auth/domain/usecases/signin_user_usecase.dart'
    as _i16;
import '../../features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initSL(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.INetworkInfo>(() => _i3.SimpleNetworkInformationImpl());
  gh.singleton<_i4.LocalDatabase>(_i4.LocalDatabase.getInstance(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i5.LocalTodoSource>(
      () => _i5.LocalTodoSource(get<_i4.LocalDatabase>()));
  gh.lazySingleton<_i6.IAuthSource>(
      () => _i6.LocalAuthSource(get<_i4.LocalDatabase>()));
  gh.lazySingleton<_i7.ITodoRepository>(() =>
      _i8.TodoRepository(get<_i3.INetworkInfo>(), get<_i5.LocalTodoSource>()));
  gh.lazySingleton<_i9.AddUpdateTodo>(
      () => _i9.AddUpdateTodo(get<_i7.ITodoRepository>()));
  gh.lazySingleton<_i10.DeleteTodo>(
      () => _i10.DeleteTodo(get<_i7.ITodoRepository>()));
  gh.lazySingleton<_i11.GetAllTodo>(
      () => _i11.GetAllTodo(get<_i7.ITodoRepository>()));
  gh.lazySingleton<_i12.IAuthRepository>(() =>
      _i13.AuthRepository(get<_i3.INetworkInfo>(), get<_i6.IAuthSource>()));
  gh.lazySingleton<_i14.IsUserLoggedIn>(
      () => _i14.IsUserLoggedIn(get<_i12.IAuthRepository>()));
  gh.lazySingleton<_i15.LogOutUser>(
      () => _i15.LogOutUser(get<_i12.IAuthRepository>()));
  gh.lazySingleton<_i16.SignInUser>(
      () => _i16.SignInUser(get<_i12.IAuthRepository>()));
  gh.factory<_i17.TodoBloc>(() => _i17.TodoBloc(get<_i9.AddUpdateTodo>(),
      get<_i10.DeleteTodo>(), get<_i11.GetAllTodo>()));
  gh.lazySingleton<_i18.CreateNewUser>(
      () => _i18.CreateNewUser(get<_i12.IAuthRepository>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(
      get<_i14.IsUserLoggedIn>(),
      get<_i16.SignInUser>(),
      get<_i18.CreateNewUser>(),
      get<_i15.LogOutUser>()));
  return get;
}
