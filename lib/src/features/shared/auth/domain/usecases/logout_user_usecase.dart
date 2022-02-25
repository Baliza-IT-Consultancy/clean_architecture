import 'package:injectable/injectable.dart';

import '../../../../../core/base/type_defs.dart';
import '../../../../../core/base/usecase.dart';
import '../repositories/auth_repository.dart';

/// {@template logout_usecase}
/// Log out currently logged in user
/// {@endtemplate}
@lazySingleton
class LogOutUser implements IUseCase<void, NoParams> {
  /// {@macro logout_usecase}
  const LogOutUser(this.repository);

  /// The [IAuthRepository] to use for this usecase
  final IAuthRepository repository;

  @override
  FailureOr<void> call(NoParams param) async {
    return await repository.logoutUser();
  }
}
