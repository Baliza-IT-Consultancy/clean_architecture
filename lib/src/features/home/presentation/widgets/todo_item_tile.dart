import 'package:flutter/material.dart';

import '../../domain/entities/todo.dart';
import 'todo_list.dart';

/// {@template todo_item_tile}
/// A single todo item Tile an index, title and description.
///
/// In the trailing of this tile is a green check icon if
/// this todo is completed.
///
/// [TodoItemTile] is used in [TodoList] to display a single todo item.
/// {@endtemplate}
class TodoItemTile extends StatelessWidget {
  /// {@macro todo_item_tile}
  const TodoItemTile({
    Key? key,
    required this.index,
    required this.todo,
    required this.onTap,
    required this.onLongPress,
  }) : super(key: key);

  /// index of the todo item
  final int index;

  /// [Todo] item of this tile
  final Todo todo;

  /// Called when the user taps this tile.
  final VoidCallback onTap;

  /// Called when the user long presses on this tile.
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("${index + 1}."),
      title: todo.title != null ? Text(todo.title!) : null,
      subtitle: Text(todo.description),
      trailing: todo.completed
          ? const Icon(
              Icons.check,
              color: Colors.green,
            )
          : const Icon(Icons.chevron_right),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }

  /// An empty [TodoItemTile]
  static Widget get prototype => const ListTile(
        leading: Text(""),
        title: Text(""),
        subtitle: Text(""),
        trailing: Icon(Icons.chevron_right),
      );
}
