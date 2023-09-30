import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class Mood extends Equatable {
  final String id;
  final String name;
  final String content;

  Mood({
    required this.name,
    required this.content,
    String? id,
  }) : id = id ?? const Uuid().v8();

  @override
  List<Object?> get props => [id];

  Mood copyWith({String? name, String? content}) {
    return Mood(
      name: name ?? this.name,
      content: content ?? this.content,
      id: id,
    );
  }
}
