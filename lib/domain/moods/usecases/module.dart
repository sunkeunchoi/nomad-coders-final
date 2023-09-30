import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proxima_nomadcoders/data/repositories/modules.dart';

import 'delete_mood.dart';
import 'delete_mood_impl.dart';
import 'get_mood.dart';
import 'get_mood_impl.dart';
import 'get_moods.dart';
import 'get_moods_impl.dart';
import 'save_mood.dart';
import 'save_mood_impl.dart';

final getMoodsUseCase = Provider<GetMoods>((ref) {
  return GetMoodsImpl(ref.read(moodRepository));
});

final getMoodUseCase = Provider<GetMood>((ref) {
  return GetMoodImpl(ref.read(moodRepository));
});

final saveMoodUseCase = Provider<SaveMood>((ref) {
  return SaveMoodImpl(ref.read(moodRepository));
});

final deleteMoodUseCase = Provider<DeleteMood>((ref) {
  return DeleteMoodImpl(ref.read(moodRepository));
});
