import 'package:injectable/injectable.dart';

import '../../../../core/base/type_defs.dart';
import '../../../../core/base/usecase.dart';
import '../entities/todo.dart';
import '../repositories/todo_repository.dart';

/// {@template get_all_todos_usecase}
/// Get all todos.
/// {@endtemplate}
@lazySingleton
class GetAllTodo extends IUseCase<List<Todo>, NoParams> {
  /// {@macro get_all_todos_usecase}
  const GetAllTodo(this._repository);

  final ITodoRepository _repository;

  @override
  FailureOr<List<Todo>> call(NoParams param) {
    return _repository.getAllTodos();
  }
}
