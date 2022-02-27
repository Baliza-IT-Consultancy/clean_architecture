import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/app_configs.dart';
import '../../../../core/constants/enums/enums.dart';
import '../blocs/todo_filter/todo_filter_bloc.dart';

/// {@template todo_filter_button}
/// A dropdown button that displays the list of all the available filters
/// {@endtemplate}
class TodoFilterButton extends StatelessWidget {
  /// {@macro todo_filter_button}
  const TodoFilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoFilterBloc, TodoFilterState>(
      builder: (context, state) {
        return PopupMenuButton<TodoFilterType>(
          tooltip: localization.filterTodo,
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: TodoFilterType.all,
                child: Text(localization.all),
              ),
              PopupMenuItem(
                value: TodoFilterType.active,
                child: Text(localization.active),
              ),
              PopupMenuItem(
                value: TodoFilterType.completed,
                child: Text(localization.completed),
              ),
            ];
          },
          initialValue: state.type,
          icon: const Icon(Icons.filter_list),
          onSelected: (_) {
            final bloc = context.read<TodoFilterBloc>();
            switch (_) {
              case TodoFilterType.all:
                bloc.add(
                  const TodoFilterEvent.showAll(),
                );
                break;
              case TodoFilterType.active:
                bloc.add(
                  const TodoFilterEvent.showActive(),
                );
                break;
              case TodoFilterType.completed:
              default:
                bloc.add(
                  const TodoFilterEvent.showCompleted(),
                );
                break;
            }
          },
        );
      },
    );
  }
}
