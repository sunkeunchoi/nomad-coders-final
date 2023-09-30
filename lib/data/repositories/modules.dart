import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proxima_nomadcoders/domain/repositories/mood_repository.dart';
import 'package:proxima_nomadcoders/domain/repositories/user_repository.dart';
import '../sources/module.dart';
import 'mood_repository.dart';
import 'user_repository.dart';

final moodProvider = Provider<IMoodRepository>((ref) {
  var moodSource = ref.read(moodSourceProvider);
  return MoodRepository(moodSource);
});

final userProvider = Provider<IUserRepository>((ref) {
  var userSource = ref.read(userSourceProvider);
  return UserRepository(userSource);
});
