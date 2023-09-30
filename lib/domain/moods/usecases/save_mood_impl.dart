import '../entities/mood.dart';
import '../repositories/mood_repository.dart';
import 'save_mood.dart';

class SaveMoodImpl implements SaveMood {
  final MoodRepository moodRepository;

  SaveMoodImpl(this.moodRepository);

  @override
  Future<void> call(Mood mood) async {
    var item = await moodRepository.getById(id: mood.id);
    if (item == null) {
      await moodRepository.add(mood: mood);
    } else {
      await moodRepository.update(mood: mood);
    }
  }
}
