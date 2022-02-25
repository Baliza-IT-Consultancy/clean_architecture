/// {@template failure}
///
/// A client friendly wrapper around the [Exception] or [Error],
/// `returned` from repositories in case of something bad happens while
/// processing request.
///
/// {@endtemplate}
class Failure {
  /// {@macro failure}
  Failure({
    required this.message,
    required this.code,
    this.error,
  });

  /// A client friendly message explaining the actual exception in
  /// more user friendly manner.
  ///
  /// `Example`: In case of user entered an wrong email while logging in,
  /// the message could be 'The entered email is not correct, please try again'
  final String message;

  /// A Developer friendly, project level error code for debugging or
  /// understanding this failure in case of serious failure events.
  final String code;

  /// Actual exception object which is responsible for this failure.
  final Object? error;
}
