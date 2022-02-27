import 'dart:convert' show json;

import '../../domain/entities/todo.dart';

/// {@template todo_model}
/// An extension of [Todo] that provides a serialization/deserialization
/// method to convert a [Todo]
/// {@endtemplate}
class TodoModel extends Todo {
  /// {@macro todo_model}
  const TodoModel({
    required String id,
    required bool completed,
    required DateTime createdAt,
    required String description,
    String? title,
  }) : super(
          id: id,
          title: title,
          completed: completed,
          description: description,
          createdAt: createdAt,
        );

  /// {@macro todo_model}
  ///
  /// Deserializes this [Todo] from a Map.
  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'],
      completed: map['completed'] ?? false,
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
          : DateTime.now(),
    );
  }

  /// {@macro todo_model}
  ///
  /// Deserializes this [Todo] from a JSON string.
  factory TodoModel.fromJson(String source) =>
      TodoModel.fromMap(json.decode(source));

  /// Serializes this [Todo] to a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'completed': completed,
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  /// Serialize this [Todo] to a JSON string.
  String toJson() => json.encode(toMap());
}
