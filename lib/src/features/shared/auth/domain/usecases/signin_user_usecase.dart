import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/usecase.dart';
import '../../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

/// {@template sign_in_user_usecase}
/// A [UseCase] to sign_in an existing user
///
/// Takes an argument of type [IUserSignInParam]
/// {@endtemplate}
@lazySingleton
class SignInUser extends UseCase<User, IUserSignInParam> {
  @override
  Future<Either<Failure, User>> call(IUserSignInParam param) async {
    await Future.delayed(const Duration(seconds: 2));

    // return Right(User.empty());
    return Left(Failure(message: "Something Went Wrong", code: "500"));
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
