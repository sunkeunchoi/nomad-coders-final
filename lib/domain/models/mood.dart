import 'package:freezed_annotation/freezed_annotation.dart';
part "mood.freezed.dart";
part "mood.g.dart";

@freezed
class Mood with _$Mood {
  const factory Mood({
    required String id,
    required String name,
    required String content,
  }) = _Mood;

  factory Mood.fromJson(Map<String, dynamic> json) => _$MoodFromJson(json);
}
