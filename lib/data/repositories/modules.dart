import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proxima_nomadcoders/domain/repositories/mood_repository.dart';
import 'package:proxima_nomadcoders/domain/repositories/user_repository.dart';
import '../sources/module.dart';
import 'mood_repository_impl.dart';
import 'user_repository_impl.dart';

final moodProvider = Provider<MoodRepository>((ref) {
  var moodSource = ref.read(moodSourceProvider);
  return MoodRepositoryImpl(moodSource);
});

final userProvider = Provider<UserRepository>((ref) {
  var userSource = ref.read(userSourceProvider);
  return UserRepositoryImpl(userSource);
});
