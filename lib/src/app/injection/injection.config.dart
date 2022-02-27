// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/device/network/network_info.dart' as _i6;
import '../../external/local_db.dart' as _i7;
import '../../features/home/domain/usecases/add_update_todo_usecase.dart'
    as _i3;
import '../../features/home/domain/usecases/delete_todo_usecase.dart' as _i4;
import '../../features/home/domain/usecases/get_all_todo_usecase.dart' as _i5;
import '../../features/home/presentation/blocs/todo_bloc/todo_bloc.dart' as _i8;
import '../../features/shared/auth/data/data_sources/auth_source.dart' as _i9;
import '../../features/shared/auth/data/repositories/auth_repository_impl.dart'
    as _i11;
import '../../features/shared/auth/domain/repositories/auth_repository.dart'
    as _i10;
import '../../features/shared/auth/domain/usecases/create_new_user_usecase.dart'
    as _i15;
import '../../features/shared/auth/domain/usecases/is_user_loggedin_usecase.dart'
    as _i12;
import '../../features/shared/auth/domain/usecases/logout_user_usecase.dart'
    as _i13;
import '../../features/shared/auth/domain/usecases/signin_user_usecase.dart'
    as _i14;
import '../../features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initSL(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AddUpdateTodo>(() => _i3.AddUpdateTodo());
  gh.lazySingleton<_i4.DeleteTodo>(() => _i4.DeleteTodo());
  gh.lazySingleton<_i5.GetAllTodo>(() => _i5.GetAllTodo());
  gh.lazySingleton<_i6.INetworkInfo>(() => _i6.SimpleNetworkInformationImpl());
  gh.singleton<_i7.LocalDatabase>(_i7.LocalDatabase.getInstance(),
      dispose: (i) => i.dispose());
  gh.factory<_i8.TodoBloc>(() => _i8.TodoBloc(
      get<_i3.AddUpdateTodo>(), get<_i4.DeleteTodo>(), get<_i5.GetAllTodo>()));
  gh.lazySingleton<_i9.IAuthSource>(
      () => _i9.LocalAuthSource(get<_i7.LocalDatabase>()));
  gh.lazySingleton<_i10.IAuthRepository>(() =>
      _i11.AuthRepository(get<_i6.INetworkInfo>(), get<_i9.IAuthSource>()));
  gh.lazySingleton<_i12.IsUserLoggedIn>(
      () => _i12.IsUserLoggedIn(get<_i10.IAuthRepository>()));
  gh.lazySingleton<_i13.LogOutUser>(
      () => _i13.LogOutUser(get<_i10.IAuthRepository>()));
  gh.lazySingleton<_i14.SignInUser>(
      () => _i14.SignInUser(get<_i10.IAuthRepository>()));
  gh.lazySingleton<_i15.CreateNewUser>(
      () => _i15.CreateNewUser(get<_i10.IAuthRepository>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(
      get<_i12.IsUserLoggedIn>(),
      get<_i14.SignInUser>(),
      get<_i15.CreateNewUser>(),
      get<_i13.LogOutUser>()));
  return get;
}
