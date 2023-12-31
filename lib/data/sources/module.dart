import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'mood_data_source.dart';
import 'mood_data_source_impl.dart';
import 'user_data_source.dart';
import 'user_data_source_impl.dart';

final userSourceProvider = Provider<UserDataSource>((ref) {
  return UserDataSourceImpl();
});

final moodSourceProvider = Provider<MoodDataSource>((ref) {
  return MoodDataSourceImpl();
});

final authProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});
