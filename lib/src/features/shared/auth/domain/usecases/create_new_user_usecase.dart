import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/usecase.dart';
import '../../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

/// {@template create_new_user_usecase}
/// A [UseCase] to create a new user
///
/// Takes an argument of type [IUserCreateParam]
/// {@endtemplate}
@lazySingleton
class CreateNewUser extends UseCase<User, IUserCreateParam> {
  @override
  Future<Either<Failure, User>> call(IUserCreateParam param) async {
    return Right(User.empty());
  }
}

/// {@template create_new_user_param}
/// Param for [CreateNewUser]
/// {@endtemplate}
class IUserCreateParam extends Equatable {
  /// {@macro create_new_user_param}
  const IUserCreateParam({
    this.name,
    required this.email,
    required this.password,
  });

  /// Name of the user
  final String? name;

  /// Email of the user
  ///
  /// `required`
  final String email;

  /// Password of the user
  ///
  /// `required`
  final String password;

  @override
  List<Object?> get props => [name, email, password];
}
