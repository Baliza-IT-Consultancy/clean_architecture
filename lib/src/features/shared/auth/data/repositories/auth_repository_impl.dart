import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/type_defs.dart';
import '../../../../../core/device/network/network_info.dart';
import '../../../../../core/error/exception_to_failure_mapper.dart';
import '../../domain/dtos/auth_dtos.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../sources/auth_source.dart';

/// {@template auth_repository_impl}
/// A concrete implementation of [AuthRepository]
/// {@endtemplate}
@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  /// {@macro auth_repository_impl}
  AuthRepository(this._networkInfo, this._authSource);

  final INetworkInfo _networkInfo;
  final IAuthSource _authSource;

  @override
  FailureOr<User> createAccount(SignupDTO signupDTO) async {
    try {
      await _networkInfo.checkConnection();
      final result = await _authSource.createAccount(signupDTO);
      return Right(result);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  FailureOr<User> isUserLoggedIn() async {
    try {
      await _networkInfo.checkConnection();
      final result = await _authSource.isUserLoggedIn();
      return Right(result);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  FailureOr<void> logoutUser() async {
    try {
      await _networkInfo.checkConnection();
      final result = await _authSource.logoutUser();
      return Right(result);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  FailureOr<User> loginUser(LoginDTO loginDTO) async {
    try {
      await _networkInfo.checkConnection();
      final result = await _authSource.loginUser(loginDTO);
      return Right(result);
    } catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
