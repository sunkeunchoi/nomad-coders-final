import '../../domain/entities/mood.dart';

abstract interface class MoodDataSource {
  Future<void> addMood({
    required Mood mood,
  });
  Future<void> deleteMood({
    required Mood mood,
  });
  Future<void> updateMood({
    required Mood mood,
  });
  Future<List<Mood>> getMoods();
  Future<Mood?> getMoodById({
    required String id,
  });
}
