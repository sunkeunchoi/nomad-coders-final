import '../entities/mood.dart';
import '../repositories/mood_repository.dart';
import 'delete_mood.dart';

class DeleteMoodImpl implements DeleteMood {
  final MoodRepository moodRepository;

  DeleteMoodImpl(this.moodRepository);

  @override
  Future<void> call(Mood mood) async {
    await moodRepository.delete(mood: mood);
  }
}
