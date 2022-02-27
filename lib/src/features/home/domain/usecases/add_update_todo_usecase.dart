import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/base/type_defs.dart';
import '../../../../core/base/usecase.dart';
import '../dtos/todo_dtos.dart';
import '../entities/todo.dart';

/// {@template add_update_todo_usecase}
/// This use case is responsible for adding/updating a todo.
/// {@endtemplate}
@lazySingleton
class AddUpdateTodo extends IUseCase<Todo, TodoDTO> {
  @override
  FailureOr<Todo> call(TodoDTO param) async {
    await Future.delayed(const Duration(seconds: 2));
    return Right(
      Todo(
        id: param.id ?? const Uuid().v4(),
        completed: param.completed ?? false,
        createdAt: DateTime.now(),
        description: param.description ?? 'Sample',
        title: param.title,
      ),
    );
  }
}
