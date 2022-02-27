import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/todo.dart';
import '../blocs/todo_bloc/todo_bloc.dart';
import 'todo_form.dart';
import 'todo_item_tile.dart';

/// {@template todo_list_view}
/// A list of [TodoItemTile]s.
///
/// [todos] is a list of [Todo]s.
/// {@endtemplate}
class TodoList extends StatelessWidget {
  /// {@macro todo_list_view}
  const TodoList({
    Key? key,
    required this.todos,
  }) : super(key: key);

  /// The list of [Todo]s to display.
  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final todo = todos[index];
        return TodoItemTile(
          // To improve the performance of the scroll, we use provide
          // a custom unique key for each item.
          key: ValueKey(todo.id),
          index: index,
          todo: todo,
          onTap: () => _updateTodo(context, todo),
          onLongPress: () {},
        );
      },
      itemCount: todos.length,
      prototypeItem: TodoItemTile.prototype,
    );
  }

  void _updateTodo(BuildContext context, Todo todo) {
    final bloc = context.read<TodoBloc>();
    showDialog(
      context: context,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: Dialog(
          child: TodoFormView(todo: todo),
        ),
      ),
    );
  }
}
