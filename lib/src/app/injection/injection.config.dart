// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/shared/auth/domain/usecases/create_new_user_usecase.dart'
    as _i3;
import '../../features/shared/auth/domain/usecases/is_user_loggedin_usecase.dart'
    as _i4;
import '../../features/shared/auth/domain/usecases/logout_user_usecase.dart'
    as _i5;
import '../../features/shared/auth/domain/usecases/signin_user_usecase.dart'
    as _i6;
import '../../features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initSL(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.CreateNewUser>(() => _i3.CreateNewUser());
  gh.lazySingleton<_i4.IsUserLoggedIn>(() => _i4.IsUserLoggedIn());
  gh.lazySingleton<_i5.LogOutUser>(() => _i5.LogOutUser());
  gh.lazySingleton<_i6.SignInUser>(() => _i6.SignInUser());
  gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc(get<_i4.IsUserLoggedIn>(),
      get<_i6.SignInUser>(), get<_i3.CreateNewUser>(), get<_i5.LogOutUser>()));
  return get;
}
