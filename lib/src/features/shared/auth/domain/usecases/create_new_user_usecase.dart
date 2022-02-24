import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/usecase.dart';
import '../../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

/// {@template create_new_user_usecase}
/// A [UseCase] to create a new user
/// {@endtemplate}
@lazySingleton
class CreateNewUser extends UseCase<User, ICreateNewUserParam> {
  @override
  Future<Either<Failure, User>> call(ICreateNewUserParam param) async {
    return Right(User.empty());
  }
}

/// {@template create_new_user_param}
/// Param for [CreateNewUser]
/// {@endtemplate}
class ICreateNewUserParam extends Equatable {
  /// {@macro create_new_user_param}
  const ICreateNewUserParam({
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
