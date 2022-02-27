import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/enums/enums.dart';
import '../../../domain/entities/todo.dart';

part 'todo_filter_event.dart';
part 'todo_filter_state.dart';
part 'todo_filter_bloc.freezed.dart';

/// {@template todo_filter_bloc}
/// Bloc that handles the filter of the [Todo]s
/// {@endtemplate}
@injectable
class TodoFilterBloc extends Bloc<TodoFilterEvent, TodoFilterState> {
  /// {@macro todo_filter_bloc}
  TodoFilterBloc() : super(_TodoFilterState()) {
    on<_ShowAll>((event, emit) {
      emit(_TodoFilterState(
        type: TodoFilterType.all,
      ));
    });

    on<_ShowActive>((event, emit) {
      emit(
        _TodoFilterState(
          type: TodoFilterType.active,
          filter: (_) => _.where((element) => !element.completed).toList(),
        ),
      );
    });

    on<_ShowCompleted>((event, emit) {
      emit(
        _TodoFilterState(
          type: TodoFilterType.completed,
          filter: (_) => _.where((element) => element.completed).toList(),
        ),
      );
    });
  }
}
