import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/configs/app_configs.dart';
import '../../../shared/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../blocs/todo_bloc/todo_bloc.dart';
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
          IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.loggedOut());
            },
            tooltip: localization.logout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.status == TodoStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == TodoStatus.error) {
            return Center(
              child: Text('${state.failure?.message}'),
            );
          }

          if (state.todos.isEmpty) {
            return Center(
              child: Text(localization.noTodos),
            );
          }

          return TodoList(
            todos: state.todos,
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
      routeSettings: const RouteSettings(name: "Add Todo"),
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
