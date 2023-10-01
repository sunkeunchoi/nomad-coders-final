import '../entities/mood.dart';

abstract interface class MoodRepository {
  Future<void> add({
    required Mood mood,
  });
  Future<void> delete({
    required Mood mood,
  });
  Future<void> update({
    required Mood mood,
  });
  Future<List<Mood>> getAll(String userId);
  Future<Mood?> getById({
    required String id,
  });
}
