// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/device/network/network_info.dart' as _i3;
import '../../external/local_db.dart' as _i4;
import '../../features/home/data/repository/todo_repository.dart' as _i9;
import '../../features/home/data/sources/todo_source/local_source.dart' as _i5;
import '../../features/home/domain/repositories/todo_repository.dart' as _i8;
import '../../features/home/domain/usecases/add_update_todo_usecase.dart'
    as _i10;
import '../../features/home/domain/usecases/delete_todo_usecase.dart' as _i11;
import '../../features/home/domain/usecases/get_all_todo_usecase.dart' as _i12;
import '../../features/home/presentation/blocs/todo_bloc/todo_bloc.dart'
    as _i18;
import '../../features/home/presentation/blocs/todo_filter/todo_filter_bloc.dart'
    as _i6;
import '../../features/shared/auth/data/repositories/auth_repository_impl.dart'
    as _i14;
import '../../features/shared/auth/data/sources/auth_source.dart' as _i7;
import '../../features/shared/auth/domain/repositories/auth_repository.dart'
    as _i13;
import '../../features/shared/auth/domain/usecases/create_new_user_usecase.dart'
    as _i19;
import '../../features/shared/auth/domain/usecases/is_user_loggedin_usecase.dart'
    as _i15;
import '../../features/shared/auth/domain/usecases/logout_user_usecase.dart'
    as _i16;
import '../../features/shared/auth/domain/usecases/signin_user_usecase.dart'
    as _i17;
import '../../features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.TodoFilterBloc>(() => _i6.TodoFilterBloc());
  gh.lazySingleton<_i7.IAuthSource>(
      () => _i7.LocalAuthSource(get<_i4.LocalDatabase>()));
  gh.lazySingleton<_i8.ITodoRepository>(() =>
      _i9.TodoRepository(get<_i3.INetworkInfo>(), get<_i5.LocalTodoSource>()));
  gh.lazySingleton<_i10.AddUpdateTodo>(
      () => _i10.AddUpdateTodo(get<_i8.ITodoRepository>()));
  gh.lazySingleton<_i11.DeleteTodo>(
      () => _i11.DeleteTodo(get<_i8.ITodoRepository>()));
  gh.lazySingleton<_i12.GetAllTodo>(
      () => _i12.GetAllTodo(get<_i8.ITodoRepository>()));
  gh.lazySingleton<_i13.IAuthRepository>(() =>
      _i14.AuthRepository(get<_i3.INetworkInfo>(), get<_i7.IAuthSource>()));
  gh.lazySingleton<_i15.IsUserLoggedIn>(
      () => _i15.IsUserLoggedIn(get<_i13.IAuthRepository>()));
  gh.lazySingleton<_i16.LogOutUser>(
      () => _i16.LogOutUser(get<_i13.IAuthRepository>()));
  gh.lazySingleton<_i17.SignInUser>(
      () => _i17.SignInUser(get<_i13.IAuthRepository>()));
  gh.factory<_i18.TodoBloc>(() => _i18.TodoBloc(get<_i10.AddUpdateTodo>(),
      get<_i11.DeleteTodo>(), get<_i12.GetAllTodo>()));
  gh.lazySingleton<_i19.CreateNewUser>(
      () => _i19.CreateNewUser(get<_i13.IAuthRepository>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(
      get<_i15.IsUserLoggedIn>(),
      get<_i17.SignInUser>(),
      get<_i19.CreateNewUser>(),
      get<_i16.LogOutUser>()));
  return get;
}
