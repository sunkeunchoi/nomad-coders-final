import 'package:proxima_nomadcoders/domain/profiles/repositories/user_repository.dart';

import '../entities/mood.dart';
import '../repositories/mood_repository.dart';
import 'get_moods.dart';

class GetMoodsImpl implements GetMoods {
  final MoodRepository moodRepository;
  final UserRepository userRepository;
  GetMoodsImpl(this.moodRepository, this.userRepository);

  @override
  Future<List<Mood>> call() async {
    var userId = userRepository.userId;
    if (userId == null) return [];
    return await moodRepository.getAll(userId);
  }
}
