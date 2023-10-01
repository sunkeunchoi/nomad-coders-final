import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class Mood extends Equatable {
  final String id;
  final String name;
  final String content;
  final String userId;
  final int createdAt;
  final int? updatedAt;

  Mood({
    required this.name,
    required this.content,
    required this.userId,
    this.updatedAt,
    int? createdAt,
    String? id,
  })  : id = id ?? const Uuid().v8(),
        createdAt = DateTime.now().millisecondsSinceEpoch;

  @override
  List<Object?> get props => [id];

  Mood copyWith({String? name, String? content, int? updatedAt}) {
    return Mood(
      name: name ?? this.name,
      content: content ?? this.content,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId,
      id: id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'content': content,
      "userId": userId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Mood.fromJson(Map<String, dynamic> map) {
    return Mood(
        id: map['id'],
        name: map['name'],
        content: map['content'],
        userId: map['userId'],
        createdAt: map['createdAt'],
        updatedAt: map['updatedAt']);
  }
}
