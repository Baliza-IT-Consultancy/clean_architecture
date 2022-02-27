import 'package:equatable/equatable.dart';

/// {@template todo_entity}
/// A [Todo] represents a task that needs to be done.
/// {@endtemplate}
class Todo extends Equatable {
  /// {@macro todo_entity}
  const Todo({
    required this.id,
    this.title,
    required this.completed,
    required this.createdAt,
    required this.description,
  });

  /// A unique identifier for this [Todo].
  final String id;

  /// The title of this [Todo].
  final String? title;

  /// The description of this [Todo].
  final String description;

  /// Whether this [Todo] is completed.
  final bool completed;

  /// The timestamp for when this [Todo] was created.
  final DateTime createdAt;

  /// Create a clone of this Todo with the given parameters.
  Todo copyWith({
    String? title,
    String? description,
    bool? completed,
  }) {
    return Todo(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      completed: completed ?? this.completed,
      createdAt: createdAt,
    );
  }

  @override
  String toString() {
    return 'TodoEntity(id: $id, title: $title, description: $description, '
        'completed: $completed, createdAt: $createdAt)';
  }

  @override
  List<Object?> get props {
    return [
      id,
      title,
      description,
      completed,
      createdAt,
    ];
  }
}
