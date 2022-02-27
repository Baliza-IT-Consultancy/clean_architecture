import '../../../../core/base/type_defs.dart';
import '../dtos/todo_dtos.dart';
import '../entities/todo.dart';

/// {@template todo_repository}
/// The TodoRepository interface defines the operations
/// that can be performed on a Todo.
/// {@endtemplate}
abstract class ITodoRepository {
  /// {@macro todo_repository}
  const ITodoRepository();

  /// Gets all the Todos.
  FailureOr<List<Todo>> getAllTodos();

  /// Create or update a Todo.
  FailureOr<Todo> addUpdateTodo(TodoDTO todo);

  /// Delete a Todo.
  FailureOr<void> deleteTodo(String id);
}
