import 'package:flutter/material.dart';

import '../../domain/entities/todo.dart';
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
          key: ValueKey(todo.id),
          index: index,
          todo: todo,
          onTap: () {},
          onLongPress: () {},
        );
      },
      itemCount: todos.length,
      prototypeItem: TodoItemTile.prototype,
    );
  }
}
