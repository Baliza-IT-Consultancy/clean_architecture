import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure_codes.dart';
import '../../../../../external/local_db.dart';
import '../../domain/dtos/auth_dtos.dart';
import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

/// A data source that can perform a user auth operation.
abstract class IAuthSource {
  /// Performs a user creation operation and returns the created user.
  Future<User> createAccount(SignupDTO signupDTO);

  /// Performs a user login operation and returns the logged user.
  Future<User> loginUser(LoginDTO loginDTO);

  /// Performs a user logout operation.
  Future<void> logoutUser();

  /// Performs a check if user is logged in.
  Future<User> isUserLoggedIn();
}

/// {@template auth_source_local}
/// A Concrete implementation of [IAuthSource] that uses Local Storage.
/// {@endtemplate}
@LazySingleton(as: IAuthSource)
class LocalAuthSource implements IAuthSource {
  /// {@macro auth_source_local}
  LocalAuthSource(this._db);

  final LocalDatabase _db;

  @override
  Future<User> createAccount(SignupDTO signupDTO) async {
    final users = _db.authBox.values
        .where((element) => element['email'] == signupDTO.email);

    if (users.isEmpty) {
      final index = await _db.authBox.add({
        ...signupDTO.toMap(),
        'id': const Uuid().v4(),
      });
      final user = UserModel.fromMap(_db.authBox.getAt(index));
      await _db.authBox.put("loggedIn", user.toMap());
      return user;
    } else {
      throw const GeneralException(
        "User already exists",
        FailureCodes.USER_ALREADY_EXISTS,
      );
    }
  }

  @override
  Future<User> isUserLoggedIn() {
    final user = _db.authBox.get('loggedIn', defaultValue: null);
    if (user != null) {
      return Future.value(UserModel.fromMap(Map.from(user)));
    }
    throw const GeneralException(
      "User not logged in",
      FailureCodes.UNAUTHENTICATED,
    );
  }

  @override
  Future<User> loginUser(LoginDTO loginDTO) async {
    final users = _db.authBox.values.where(
      (element) =>
          element['email'] == loginDTO.email &&
          element['password'] == loginDTO.password,
    );

    if (users.isNotEmpty) {
      await _db.authBox.put('loggedIn', users.first);
      return UserModel.fromMap(Map.from(users.first));
    }

    throw const GeneralException(
      "Account not found.",
      FailureCodes.USER_DOES_NOT_EXISTS,
    );
  }

  @override
  Future<void> logoutUser() {
    return Future.value(_db.authBox.delete('loggedIn'));
  }
}
