/// {@template general_exception}
/// A general exception class for all errors in the app.
/// {@endtemplate}
class GeneralException implements Exception {
  /// {@template general_exception_message}
  const GeneralException(this.message, this.code);

  /// A message describing the error.
  final String message;

  /// A code describing the error.
  final String code;

  @override
  String toString() => 'GeneralException(message: $message, code: $code)';
}
