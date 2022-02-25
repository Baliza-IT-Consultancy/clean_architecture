import 'dart:convert' show json;

import '../../domain/entities/user_entity.dart';

/// {@template user_model}
/// An extension of [User] that adds serialization/deserialization.
/// {@endtemplate}
class UserModel extends User {
  /// {@macro user_model}
  const UserModel({
    required String id,
    String? name,
    String? email,
  }) : super(
          id: id,
          name: name,
          email: email,
        );

  /// create a user from a map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'],
      email: map['email'],
    );
  }

  /// create a user from a json string
  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  /// convert this object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  /// convert this object to json
  String toJson() => json.encode(toMap());
}
