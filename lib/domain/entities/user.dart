import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class User extends Equatable {
  final String id;
  final String name;
  final String email;

  User({
    required this.name,
    required this.email,
    String? id,
  }) : id = id ?? const Uuid().v8();

  @override
  List<Object?> get props => [id];

  User copyWith({String? name, String? email}) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      id: id,
    );
  }
}
