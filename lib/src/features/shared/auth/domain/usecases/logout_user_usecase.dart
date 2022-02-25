import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/usecase.dart';
import '../../../../../core/error/failures.dart';

/// {@template logout_user_usecase}
/// Log out currently logged in user
/// {@endtemplate}
@lazySingleton
class LogOutUser implements UseCase<bool, NoParams> {
  @override
  Future<Either<Failure, bool>> call(NoParams param) async {
    await Future.delayed(const Duration(seconds: 5));
    return const Right(true);
  }
}
