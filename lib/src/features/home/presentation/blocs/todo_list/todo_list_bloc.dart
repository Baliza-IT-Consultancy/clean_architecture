import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failures.dart';
import '../../../domain/entities/todo.dart';

part 'todo_list_event.dart';
part 'todo_list_state.dart';
part 'todo_list_bloc.freezed.dart';

/// {@template todo_list_bloc}
/// Bloc for the managing the state of [Todo]s.
/// {@endtemplate}
class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  /// {@macro todo_list_bloc}
  TodoListBloc() : super(const _Initial()) {
    on<_Started>((event, emit) {
      emit(const TodoListState.loading());
      emit(const TodoListState.loaded(todos: <Todo>[]));
    });
  }
}
