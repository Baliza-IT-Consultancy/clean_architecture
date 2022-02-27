import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure_codes.dart';
import '../../../../../external/local_db.dart';
import '../../../domain/dtos/todo_dtos.dart';
import '../../../domain/entities/todo.dart';
import '../../models/todo_model.dart';
import 'todo_source.dart';

/// {@template local_todo_source}
/// An implementation of [TodoSource] that uses a local storage on the device
/// for its operations.
/// {@endtemplate}
@lazySingleton
class LocalTodoSource implements ITodoSource {
  /// {@macro local_todo_source}
  LocalTodoSource(this._db);

  final LocalDatabase _db;

  @override
  Future<Todo> createTodo(TodoDTO todo) async {
    final box = _db.todoBox;
    assert(
      todo.description != null && todo.description!.isNotEmpty,
      'description cannot be empty.',
    );

    final newTodo = TodoModel(
      id: const Uuid().v4(),
      completed: todo.completed ?? false,
      createdAt: DateTime.now(),
      description: todo.description ?? '',
      title: todo.title ?? '',
    );

    await box.put(newTodo.id, newTodo.toMap());
    return newTodo;
  }

  @override
  Future<void> deleteTodo(String id) {
    final box = _db.todoBox;
    return box.delete(id);
  }

  @override
  Future<List<Todo>> getTodos() async {
    final box = _db.todoBox;
    return box.values
        .map(
          (todo) => TodoModel.fromMap(
            Map.from(todo),
          ),
        )
        .toList();
  }

  @override
  Future<Todo> updateTodo(TodoDTO todo) async {
    final box = _db.todoBox;
    final tempTodo = box.get(todo.id);

    if (tempTodo == null) {
      throw const GeneralException(
        'Todo not found',
        FailureCodes.TODO_NOT_FOUND,
      );
    }

    final updatedTodo = TodoModel(
      id: tempTodo.id,
      completed: todo.completed ?? tempTodo.completed,
      createdAt: tempTodo.createdAt,
      description: todo.description ?? tempTodo.description,
      title: todo.title ?? tempTodo.title,
    );

    await box.put(updatedTodo.id, updatedTodo.toMap());

    return updatedTodo;
  }
}
