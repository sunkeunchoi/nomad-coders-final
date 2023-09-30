import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class Profile extends Equatable {
  final String id;
  final String name;
  final String email;
  final String? photoUrl;

  Profile({
    required this.name,
    required this.email,
    String? id,
    this.photoUrl,
  }) : id = id ?? const Uuid().v8();

  @override
  List<Object?> get props => [id];

  Profile copyWith({String? name, String? email, String? photoUrl}) {
    return Profile(
      name: name ?? this.name,
      email: email ?? this.email,
      id: id,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'photoUrl': photoUrl,
    };
  }

  Profile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        photoUrl = json['photoUrl'];
}
