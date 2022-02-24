import 'package:equatable/equatable.dart';

/// {@template user_entity}
/// User Entity
///
/// use `User.empty()` to create empty user
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user_entity}
  const User({
    required this.id,
    this.name,
    this.email,
  });

  /// A factory constructor for anonymous user
  factory User.empty() => const User(id: '');

  /// Id of the user
  final String id;

  /// Name of the user
  final String? name;

  /// Email of the user
  final String? email;

  /// create a clone of this object
  User copyWith({
    String? id,
    String? name,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  /// Check if this user is anonymous
  bool get isEmpty => this == User.empty();

  /// Check if this user is not anonymous
  bool get isNotEmpty => !isEmpty;

  @override
  List<Object?> get props => [id, name, email];

  @override
  String toString() => 'User(id: $id, name: $name, email: $email)';
}
