import 'package:flutter/material.dart';

import 'type_defs.dart';

/// {@template usecase_no_param}
/// Use this when [IUseCase] don't need to take any arguments.
///
/// for example:
///
/// ``` dart
/// class GetTodoList implements UseCase<int, NoParams> {
///   GetTodoList(this.repository);
///
///   final TodoRepository repository;
///
///   FailureOr<int> call(NoParams params) {
///     return repository.getAllTodo();
///   }
/// }
/// ```
/// {@endtemplate}
class NoParams {
  /// {@macro usecase_no_param}
  const NoParams();
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
///   const TurnLightOn(this.repository, this.validator);
///
///   final LightRepository repository;
///   final LightValidator validator;
///
///   @override
///   FailureOr<bool> call(int lightId) {
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
/// See Also: [IUseCaseSync]: A Sync [IUseCase]
@immutable
abstract class IUseCase<ReturnType, Params> {
  /// {@macro src.core.base.usecase.UseCase}
  const IUseCase();

  /// an override of `call` to execute this use case
  FailureOr<ReturnType> call(Params param);
}

/// A Synchronous [IUseCase]
///
/// {@macro src.core.base.usecase.UseCase}
///
/// See More: [IUseCase] : An Async UseCase
@immutable
abstract class IUseCaseSync<ReturnType, Params> {
  /// {@macro src.core.base.usecase.UseCase}
  const IUseCaseSync();

  /// an override of `call` to execute this use case
  FailureOrSync<ReturnType> call(Params param);
}
