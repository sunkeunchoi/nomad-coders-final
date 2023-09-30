import '../entities/mood.dart';
import '../repositories/mood_repository.dart';
import 'get_moods.dart';

class GetMoodsImpl implements GetMoods {
  final MoodRepository moodRepository;

  GetMoodsImpl(this.moodRepository);

  @override
  Future<List<Mood>> call() async {
    return await moodRepository.getAll();
  }
}
