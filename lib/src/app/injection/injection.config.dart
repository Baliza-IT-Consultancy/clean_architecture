// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/device/network/network_info.dart' as _i3;
import '../../external/local_db.dart' as _i4;
import '../../features/shared/auth/data/repositories/auth_repository_impl.dart'
    as _i7;
import '../../features/shared/auth/data/sources/auth_source.dart' as _i5;
import '../../features/shared/auth/domain/repositories/auth_repository.dart'
    as _i6;
import '../../features/shared/auth/domain/usecases/create_new_user_usecase.dart'
    as _i11;
import '../../features/shared/auth/domain/usecases/is_user_loggedin_usecase.dart'
    as _i8;
import '../../features/shared/auth/domain/usecases/logout_user_usecase.dart'
    as _i9;
import '../../features/shared/auth/domain/usecases/signin_user_usecase.dart'
    as _i10;
import '../../features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initSL(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.INetworkInfo>(() => _i3.SimpleNetworkInformationImpl());
  gh.singleton<_i4.LocalDatabase>(_i4.LocalDatabase.getInstance(),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i5.IAuthSource>(
      () => _i5.LocalAuthSource(get<_i4.LocalDatabase>()));
  gh.lazySingleton<_i6.IAuthRepository>(() =>
      _i7.AuthRepository(get<_i3.INetworkInfo>(), get<_i5.IAuthSource>()));
  gh.lazySingleton<_i8.IsUserLoggedIn>(
      () => _i8.IsUserLoggedIn(get<_i6.IAuthRepository>()));
  gh.lazySingleton<_i9.LogOutUser>(
      () => _i9.LogOutUser(get<_i6.IAuthRepository>()));
  gh.lazySingleton<_i10.SignInUser>(
      () => _i10.SignInUser(get<_i6.IAuthRepository>()));
  gh.lazySingleton<_i11.CreateNewUser>(
      () => _i11.CreateNewUser(get<_i6.IAuthRepository>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(
      get<_i8.IsUserLoggedIn>(),
      get<_i10.SignInUser>(),
      get<_i11.CreateNewUser>(),
      get<_i9.LogOutUser>()));
  return get;
}
