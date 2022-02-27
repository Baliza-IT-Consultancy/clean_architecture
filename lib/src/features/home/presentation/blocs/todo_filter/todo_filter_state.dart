part of 'todo_filter_bloc.dart';

/// A filter that applies to todos
typedef TodoFilter = List<Todo> Function(List<Todo> todos);

/// {@template todo_filter_state}
/// States of [TodoFilterBloc]
/// {@endtemplate}
@freezed
class TodoFilterState with _$TodoFilterState {
  /// {@macro todo_filter_state}
  factory TodoFilterState({
    @Default(TodoFilterType.all) TodoFilterType type,
    TodoFilter? filter,
  }) = _TodoFilterState;
}
