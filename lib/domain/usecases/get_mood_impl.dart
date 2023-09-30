import '../entities/mood.dart';
import '../repositories/mood_repository.dart';
import 'get_mood.dart';

class GetMoodImpl implements GetMood {
  final MoodRepository _repository;

  GetMoodImpl(this._repository);

  @override
  Future<Mood?> call(String id) async {
    return await _repository.getById(id: id);
  }
}
