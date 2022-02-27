part of 'todo_filter_bloc.dart';

/// Events of [TodoFilterBloc]
@freezed
class TodoFilterEvent with _$TodoFilterEvent {
  /// show all todos
  const factory TodoFilterEvent.showAll() = _ShowAll;

  /// show active todos only
  const factory TodoFilterEvent.showActive() = _ShowActive;

  /// show completed todos only
  const factory TodoFilterEvent.showCompleted() = _ShowCompleted;
}
