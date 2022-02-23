import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

/// Use this when [UseCase] don't need to take any arguments.
///
/// for example:
///
/// ``` dart
/// class GetTodoList implements UseCase<int, NoParams> {
///   GetTodoList(this.repository);
///
///   final TodoRepository repository;
///
///   Future<Either<Failure, int>> call(NoParams params) {
///     return repository.getAllTodo();
///   }
/// }
/// ```
///
class NoParams extends Equatable {
  @override
  List<Object?> get props => const [];
}

/// {@template src.core.base.usecase.UseCase}
/// The purpose of a use case is to serve a user's use case of the system.
///
/// Usecase should also handles validation of the input and output.
///
/// {@endtemplate}
///
/// For example, "turn light on" or "send email to tenant". In code, the entry
/// point of a Use Case is a class that has one public method.
///
/// ```dart
/// class TurnLightOn implements UseCase<bool, int> {
///   const TurnLightOn(this.repository);
///
///   final LightRepository repository;
///   final LightValidator validator;
///
///   @override
///   Future<Either<Failure, bool>> call(int lightId) {
///
///     // Check if light id is correct.
///     final isValid = validator.isLightIdCorrect(lightId);
///
///     // if light id is not in correct format return failure.
///     if (!isValid) {
///        return const Left(Failure(message: "Incorrect light id."));
///     }
///
///     // Get light with the id of lightId.
///     return repository.turnLightOn(lightId);
///   }
/// }
/// ```
/// See Also: [UseCaseSync]: A Sync [UseCase]
abstract class UseCase<ReturnType, Params> {
  /// an override of `call` to execute this use case
  Future<Either<Failure, ReturnType>> call(Params param);
}

/// A Synchronous [UseCase]
///
/// {@macro src.core.base.usecase.UseCase}
///
/// See More: [UseCase] : An Async UseCase
abstract class UseCaseSync<ReturnType, Params> {
  /// an override of `call` to execute this use case
  Either<Failure, ReturnType> call(Params param);
}
