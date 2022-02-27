import '../../../domain/dtos/todo_dtos.dart';
import '../../../domain/entities/todo.dart';

/// A data source interface for operating on [Todo] objects.
abstract class ITodoSource {
  /// Get all [Todo] objects.
  Future<List<Todo>> getTodos();

  /// Create a new [Todo] object.
  ///
  /// Returns the created [Todo] object.
  Future<Todo> createTodo(TodoDTO todo);

  /// Update an existing [Todo] object.
  ///
  /// Returns the updated [Todo] object.
  ///
  /// Note: This method will not update the [Todo] object's [id] property.
  Future<Todo> updateTodo(TodoDTO todo);

  /// Delete an existing [Todo] object.
  Future<void> deleteTodo(String id);
}
