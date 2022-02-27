// ignore_for_file: constant_identifier_names

/// Set of failure codes that can be used for debugging.
class FailureCodes {
  FailureCodes._();

  /// When no internet is available.
  static const String NO_INTERNET = "0";

  /// When error or exception of unknown type is thrown.
  static const String UNKNOWN_ERROR = "1";

  /// When the user is not loggedin and not in cache.
  static const String UNAUTHENTICATED = "2";

  /// When the user already have an account and trying to
  /// create a new account.
  static const String USER_ALREADY_EXISTS = "3";

  /// When the user is not in db.
  static const String USER_DOES_NOT_EXISTS = "4";

  /// When the todo object is not in db.
  static const String TODO_NOT_FOUND = "5";

  /// When an assertion error is thrown.
  static const String ASSERTION_ERROR = "6";
}
