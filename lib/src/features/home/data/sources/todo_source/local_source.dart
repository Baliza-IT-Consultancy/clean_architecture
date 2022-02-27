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

    await box.put(newTodo.id, _addAuthId(newTodo.toMap()));
    return newTodo;
  }

  @override
  Future<void> deleteTodo(String id) {
    final box = _db.todoBox;
    final todo = box.get(id);

    if (todo['authId'] != _currentUser['id']) {
      throw const GeneralException(
        'Todo not found',
        FailureCodes.TODO_NOT_FOUND,
      );
    }
    return box.delete(id);
  }

  @override
  Future<List<Todo>> getTodos() async {
    final box = _db.todoBox;
    final todos = box.values
        .where((element) => element['authId'] == _currentUser['id'])
        .map(
          (todo) => TodoModel.fromMap(
            Map.from(todo),
          ),
        )
        .toList();

    todos.sort(
      (a, b) => a.createdAt.compareTo(b.createdAt),
    );

    return todos;
  }

  @override
  Future<Todo> updateTodo(TodoDTO todo) async {
    final box = _db.todoBox;
    final _temp = box.get(todo.id);

    if (_temp == null) {
      throw const GeneralException(
        'Todo not found',
        FailureCodes.TODO_NOT_FOUND,
      );
    }

    final _todo = TodoModel.fromMap(
      Map.from(_temp),
    );

    final updatedTodo = TodoModel(
      id: _todo.id,
      completed: todo.completed ?? _todo.completed,
      createdAt: _todo.createdAt,
      description: todo.description ?? _todo.description,
      title: todo.title ?? _todo.title,
    );

    await box.put(updatedTodo.id, _addAuthId(updatedTodo.toMap()));

    return updatedTodo;
  }

  /// Utilities for adding and checking of the currently logged in user
  ///
  /// This is a temporary workaround for this kind of situation
  /// where we need to add the currently logged in user to the
  /// [Todo] model before saving it to the local storage or retrieving the list
  /// of todos.
  ///
  /// we could use the mixin for this kind of purpose but we need to think on
  /// how to handle this kind of case.
  ///
  /// another solution would be that this kind of situation can be handled
  /// by the repository layer where we can add this capability as dependency.
  ///
  // TODO(raj457036): Need to think about interdependencies between
  // multiple data sources, https://github.com/raj457036/clean_architecture/issues/1
  Map<String, dynamic> get _currentUser =>
      Map.from(_db.authBox.get('loggedIn'));

  Map<String, dynamic> _addAuthId(Map<String, dynamic> map) {
    map['authId'] = _currentUser['id'];
    return map;
  }
}
