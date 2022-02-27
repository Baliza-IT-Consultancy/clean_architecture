part of 'todo_list_bloc.dart';

/// The states of [TodoListBloc]
@freezed
class TodoListState with _$TodoListState {
  /// initial state of [TodoListBloc].
  const factory TodoListState.initial() = _Initial;

  /// When the todo list is loading.
  const factory TodoListState.loading() = _Loading;

  /// When the todo list is loaded.
  const factory TodoListState.loaded({required List<Todo> todos}) = _Loaded;

  /// When there is an error while loading the todo list.
  const factory TodoListState.error({required Failure failure}) = _Error;
}
