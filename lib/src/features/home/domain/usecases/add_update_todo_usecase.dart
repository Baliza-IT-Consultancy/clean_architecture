import 'package:injectable/injectable.dart';

import '../../../../core/base/type_defs.dart';
import '../../../../core/base/usecase.dart';
import '../dtos/todo_dtos.dart';
import '../entities/todo.dart';
import '../repositories/todo_repository.dart';

/// {@template add_update_todo_usecase}
/// This use case is responsible for adding/updating a todo.
/// {@endtemplate}
@lazySingleton
class AddUpdateTodo extends IUseCase<Todo, TodoDTO> {
  /// {@macro add_update_todo_usecase}
  const AddUpdateTodo(this._repository);

  final ITodoRepository _repository;

  @override
  FailureOr<Todo> call(TodoDTO param) {
    return _repository.addUpdateTodo(param);
  }
}
