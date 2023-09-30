import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proxima_nomadcoders/domain/moods/repositories/mood_repository.dart';
import 'package:proxima_nomadcoders/domain/profiles/repositories/user_repository.dart';
import '../sources/module.dart';
import 'mood_repository_impl.dart';
import 'user_repository_impl.dart';

final moodRepository = Provider<MoodRepository>((ref) {
  var moodSource = ref.read(moodSourceProvider);
  return MoodRepositoryImpl(moodSource);
});

final uesrRepository = Provider<UserRepository>((ref) {
  var userSource = ref.read(userSourceProvider);
  return UserRepositoryImpl(userSource);
});
