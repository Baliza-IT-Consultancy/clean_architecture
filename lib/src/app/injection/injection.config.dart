// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_architecture/src/core/device/network/network_info.dart'
    as _i3;
import 'package:clean_architecture/src/external/local_db.dart' as _i4;
import 'package:clean_architecture/src/features/shared/auth/data/repositories/auth_repository_impl.dart'
    as _i9;
import 'package:clean_architecture/src/features/shared/auth/data/sources/auth_source.dart'
    as _i7;
import 'package:clean_architecture/src/features/shared/auth/domain/repositories/auth_repository.dart'
    as _i8;
import 'package:clean_architecture/src/features/shared/auth/domain/usecases/create_new_user_usecase.dart'
    as _i13;
import 'package:clean_architecture/src/features/shared/auth/domain/usecases/is_user_loggedin_usecase.dart'
    as _i10;
import 'package:clean_architecture/src/features/shared/auth/domain/usecases/logout_user_usecase.dart'
    as _i11;
import 'package:clean_architecture/src/features/shared/auth/domain/usecases/signin_user_usecase.dart'
    as _i12;
import 'package:clean_architecture/src/features/shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i14;
import 'package:clean_architecture/src/features/shared/notification/presentation/blocs/notification_cubit/notification_cubit.dart'
    as _i5;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initSL(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.INetworkInfo>(() => _i3.SimpleNetworkInformationImpl());
  gh.singleton<_i4.LocalDatabase>(
    _i4.LocalDatabase.getInstance(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i5.NotificationCubit>(
      () => _i5.NotificationCubit(gh<_i6.FirebaseMessaging>()));
  gh.lazySingleton<_i7.IAuthSource>(
      () => _i7.LocalAuthSource(gh<_i4.LocalDatabase>()));
  gh.lazySingleton<_i8.IAuthRepository>(() => _i9.AuthRepository(
        gh<_i3.INetworkInfo>(),
        gh<_i7.IAuthSource>(),
      ));
  gh.lazySingleton<_i10.IsUserLoggedIn>(
      () => _i10.IsUserLoggedIn(gh<_i8.IAuthRepository>()));
  gh.lazySingleton<_i11.LogOutUser>(
      () => _i11.LogOutUser(gh<_i8.IAuthRepository>()));
  gh.lazySingleton<_i12.SignInUser>(
      () => _i12.SignInUser(gh<_i8.IAuthRepository>()));
  gh.lazySingleton<_i13.CreateNewUser>(
      () => _i13.CreateNewUser(gh<_i8.IAuthRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(
        gh<_i10.IsUserLoggedIn>(),
        gh<_i12.SignInUser>(),
        gh<_i13.CreateNewUser>(),
        gh<_i11.LogOutUser>(),
      ));
  return getIt;
}
