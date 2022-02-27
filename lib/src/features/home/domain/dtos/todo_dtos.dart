/// {@template todo_dto}
/// A DTO for creating/updating a todo.
/// {@endtemplate}
class TodoDTO {
  /// {@template todo_dto}
  const TodoDTO({
    this.id,
    this.title,
    this.description,
    this.completed,
  });

  /// The [id] of the [Todo] to update
  ///
  /// Note: If [id] is null, a new [Todo] will be created.
  final String? id;

  /// The title of the todo.
  ///
  /// Note: If [title] is null, the [Todo] will be created without a title.
  final String? title;

  /// The description of the todo.
  final String? description;

  /// Whether the todo is completed.
  final bool? completed;

  @override
  String toString() {
    return 'TodoDTO(id: $id, title: $title, description: $description,'
        ' completed: $completed)';
  }
}
