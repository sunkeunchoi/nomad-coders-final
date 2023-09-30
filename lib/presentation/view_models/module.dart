import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/moods/entities/mood.dart';
import '../../domain/profiles/entities/profile.dart';
import 'moods_view_model.dart';
import 'profiles_view_model.dart';

final moodListState = StateNotifierProvider<MoodsStateNotifier, List<Mood>>(
  (ref) => MoodsStateNotifier(ref),
);

final moodListModel = Provider<MoodsStateNotifier>(
  (ref) => ref.watch(moodListState.notifier),
);

final profileState = StateNotifierProvider<ProfileStateNotifier, Profile?>(
  (ref) => ProfileStateNotifier(ref),
);

final profileModel = Provider<ProfileStateNotifier>(
  (ref) => ref.watch(profileState.notifier),
);
