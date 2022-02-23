import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/base/usecase.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

/// {@template sign_in_user_usecase}
/// [UseCase] to sign_in an existing user
/// {@endtemplate}
class SignInUser extends UseCase<User, IUserSignInParam> {
  @override
  Future<Either<Failure, User>> call(IUserSignInParam param) async {
    return Right(User.empty());
  }
}

/// {@template sign_in_user_param}
/// Param for [SignInUser]
/// {@endtemplate}
class IUserSignInParam extends Equatable {
  /// {@macro sign_in_user_param}
  const IUserSignInParam({
    required this.email,
    required this.password,
  });

  /// Email entered by the user
  ///
  /// `required`
  final String email;

  /// Password entered by the user
  ///
  /// `required`
  final String password;

  @override
  List<Object> get props => [email, password];
}
