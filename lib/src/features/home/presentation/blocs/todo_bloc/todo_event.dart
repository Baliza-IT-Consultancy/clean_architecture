part of 'todo_bloc.dart';

/// Events for the [TodoBloc]
@freezed
class TodoEvent with _$TodoEvent {
  /// An event to load all the [Todo]s
  const factory TodoEvent.load() = _Started;

  /// An event to add a [Todo]
  const factory TodoEvent.addTodo(TodoDTO todo) = _AddTodo;

  /// An event to remove a [Todo]
  const factory TodoEvent.removeTodo(String todoId) = _RemoveTodo;

  /// An event to update a [Todo]
  const factory TodoEvent.updateTodo(TodoDTO todo) = _UpdateTodo;

  /// An event to toggle sort type [Todo]s
  const factory TodoEvent.toggleSort() = _SortTodos;
}
