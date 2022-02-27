part of 'todo_bloc.dart';

/// Status of the [TodoBloc] state
enum TodoStatus {
  /// The [TodoBloc] is initializing
  initial,

  /// The [TodoBloc] is loading
  loading,

  /// The [TodoBloc] is loaded
  loaded,

  /// The [TodoBloc] has error
  error,
}

/// The states of [TodoBloc]
@freezed
class TodoState with _$TodoState {
  TodoState._();

  /// The state of [TodoBloc].
  factory TodoState({
    @Default(TodoStatus.initial) TodoStatus status,
    @Default([]) List<Todo> todos,
    Failure? failure,
  }) = _TodoState;
}
