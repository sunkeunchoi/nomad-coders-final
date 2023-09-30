import '../../domain/entities/mood.dart';

abstract interface class MoodDataSource {
  Future<void> add({
    required Mood mood,
  });
  Future<void> delete({
    required Mood mood,
  });
  Future<void> update({
    required Mood mood,
  });
  Future<List<Mood>> getAll();
  Future<Mood?> getById({
    required String id,
  });
}
