import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/base/usecase.dart';
import '../../../../../core/error/failures.dart';
import '../../../domain/dtos/todo_dtos.dart';
import '../../../domain/entities/todo.dart';
import '../../../domain/usecases/add_update_todo_usecase.dart';
import '../../../domain/usecases/delete_todo_usecase.dart';
import '../../../domain/usecases/get_all_todo_usecase.dart';

part 'todo_bloc.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

/// {@template todo_list_bloc}
/// Bloc for the managing the state of [Todo]s.
/// {@endtemplate}
@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  /// {@macro todo_list_bloc}
  TodoBloc(
    this.addUpdateTodo,
    this.deleteTodo,
    this.getAllTodo,
  ) : super(_TodoState()) {
    on<_Started>((event, emit) async {
      final result = await getAllTodo(const NoParams());
      result.fold(
        (l) => emit(state.copyWith(
          failure: l,
          status: TodoStatus.error,
        )),
        (r) => emit(state.copyWith(
          todos: r,
          status: TodoStatus.loaded,
        )),
      );
    });

    on<_AddTodo>((event, emit) async {
      emit(state.copyWith(status: TodoStatus.loading));
      final result = await addUpdateTodo(event.todo);
      result.fold(
        (l) => emit(
          state.copyWith(
            failure: l,
            status: TodoStatus.error,
          ),
        ),
        (r) => emit(
          state.copyWith(
            todos: [r, ...state.todos],
            status: TodoStatus.loaded,
          ),
        ),
      );
    });

    on<_UpdateTodo>((event, emit) async {
      emit(state.copyWith(status: TodoStatus.loading));
      final index = state.todos.indexWhere((todo) => todo.id == event.todo.id);
      final result = await addUpdateTodo(event.todo);

      result.fold(
        (l) => emit(
          state.copyWith(
            failure: l,
            status: TodoStatus.error,
          ),
        ),
        (r) => emit(
          state.copyWith(
            todos: [
              ...state.todos.take(index),
              r,
              ...state.todos.skip(index + 1),
            ],
            status: TodoStatus.loaded,
          ),
        ),
      );
    });

    on<_RemoveTodo>((event, emit) async {
      emit(state.copyWith(status: TodoStatus.loading));
      final index = state.todos.indexWhere((todo) => todo.id == event.todoId);
      final result = await deleteTodo(event.todoId);
      result.fold(
        (l) => emit(
          state.copyWith(
            failure: l,
            status: TodoStatus.error,
          ),
        ),
        (r) => emit(
          state.copyWith(
            todos: [
              ...state.todos.take(index),
              ...state.todos.skip(index + 1),
            ],
            status: TodoStatus.loaded,
          ),
        ),
      );
    });
  }

  /// {@macro add_update_todo_usecase}
  final AddUpdateTodo addUpdateTodo;

  /// {@macro delete_todo_usecase}
  final DeleteTodo deleteTodo;

  /// {@macro get_all_todos_usecase}
  final GetAllTodo getAllTodo;
}
