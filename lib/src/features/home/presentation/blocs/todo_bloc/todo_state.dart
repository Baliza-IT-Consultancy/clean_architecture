part of 'todo_bloc.dart';

/// The states of [TodoBloc]
@freezed
class TodoState with _$TodoState {
  TodoState._();

  /// The state of [TodoBloc].
  factory TodoState({
    @Default(TodoStatus.initial) TodoStatus status,
    @Default(TodoSortType.date) TodoSortType sort,
    @Default([]) List<Todo> todos,
    Failure? failure,
  }) = _TodoState;
}
