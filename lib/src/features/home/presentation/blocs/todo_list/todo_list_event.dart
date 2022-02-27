part of 'todo_list_bloc.dart';

/// Events for the [TodoListBloc]
@freezed
class TodoListEvent with _$TodoListEvent {
  /// An event to load all the [Todo]s
  const factory TodoListEvent.load() = _Started;

  /// An event to add a [Todo]
  const factory TodoListEvent.addTodo(Todo todo) = _AddTodo;

  /// An event to remove a [Todo]
  const factory TodoListEvent.removeTodo(String todoId) = _RemoveTodo;

  /// An event to update a [Todo]
  const factory TodoListEvent.updateTodo(Todo todo) = _UpdateTodo;
}
