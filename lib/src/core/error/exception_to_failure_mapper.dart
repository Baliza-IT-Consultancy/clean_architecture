import 'dart:developer';
import 'dart:io';

import '../configs/app_configs.dart';
import 'exceptions.dart';
import 'failure_codes.dart';
import 'failures.dart';

/// A method that maps an [Object] supposedly representing an [Exception]
/// to a [Failure].
Failure mapExceptionToFailure(Object? e) {
  /// if debug mode is enabled, log the exception
  if (AppConfig.logExceptions) {
    log(
      e.toString(),
      error: e,
      time: DateTime.now(),
      stackTrace: StackTrace.current,
    );
  }

  if (e is SocketException) {
    return Failure(
      message: e.message,
      code: FailureCodes.NO_INTERNET,
    );
  }

  if (e is GeneralException) {
    return Failure(message: e.message, code: e.code);
  }

  if (e is AssertionError) {
    return Failure(
      message: e.message.toString(),
      code: FailureCodes.ASSERTION_ERROR,
    );
  }

  return Failure(
    message: "Something went wrong",
    code: FailureCodes.UNKNOWN_ERROR,
  );
}
