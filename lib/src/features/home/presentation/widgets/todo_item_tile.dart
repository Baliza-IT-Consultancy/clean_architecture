import 'package:flutter/material.dart';

import '../../domain/entities/todo.dart';

/// {@template todo_item_tile}
/// A single todo item Tile with and index, title and description.
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
      title: Text(todo.title),
      subtitle: todo.description != null ? Text(todo.description!) : null,
      trailing: const Icon(Icons.chevron_right),
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
