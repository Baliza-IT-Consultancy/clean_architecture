import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/app_configs.dart';
import '../../../../core/constants/enums/enums.dart';
import '../../../shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../blocs/todo_bloc/todo_bloc.dart';
import '../blocs/todo_filter/todo_filter_bloc.dart';
import '../widgets/todo_filter_button.dart';
import '../widgets/todo_form.dart';
import '../widgets/todo_list.dart';

/// {@template home_page}
/// Home page
///
/// This page shows an infinitely scrollable list of todos
/// and a button to create new todo.
///
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.appName),
        actions: [
          const TodoFilterButton(),
          IconButton(
            onPressed: () {
              context.read<TodoBloc>().add(const TodoEvent.toggleSort());
            },
            tooltip: localization.sortTodo,
            icon: const Icon(Icons.sort),
          ),
          IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.loggedOut());
            },
            tooltip: localization.logout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocConsumer<TodoBloc, TodoState>(
        listener: (context, state) {
          if (state.status == TodoStatus.error) {
            messenger.showSnackBar(
              SnackBar(
                content: Text('${state.failure?.message}'),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.status == TodoStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.todos.isEmpty) {
            return Center(
              child: Text(localization.noTodos),
            );
          }

          return BlocBuilder<TodoFilterBloc, TodoFilterState>(
            builder: (context, filterState) {
              return TodoList(
                todos: filterState.filter != null
                    ? filterState.filter!(state.todos)
                    : state.todos,
              );
            },
          );
        },
      ),
      floatingActionButton: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) => FloatingActionButton(
          tooltip: localization.createTodo,
          onPressed: state.status == TodoStatus.loading
              ? null
              : () => _addTodo(context),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void _addTodo(BuildContext context) {
    final bloc = context.read<TodoBloc>();
    showDialog(
      context: context,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: const Dialog(
          child: TodoFormView(),
        ),
      ),
    );
  }
}
