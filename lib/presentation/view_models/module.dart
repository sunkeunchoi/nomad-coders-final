import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/moods/entities/mood.dart';
import '../../domain/moods/usecases/module.dart';

class MoodsStateNotifier extends StateNotifier<List<Mood>> {
  MoodsStateNotifier(this.ref) : super([]) {
    loadMoods();
  }
  final Ref ref;
  late final getMoods = ref.read(getMoodsUseCase);
  Future<void> loadMoods() async {
    state = await getMoods();
  }

  Future<void> add(Mood mood) async {
    await ref.read(saveMoodUseCase).call(mood);
    await loadMoods();
  }

  Future<void> delete(Mood mood) async {
    await ref.read(deleteMoodUseCase).call(mood);
    await loadMoods();
  }

  Future<Mood?> get(String id) async {
    return await ref.read(getMoodUseCase).call(id);
  }
}

final moodListState = StateNotifierProvider<MoodsStateNotifier, List<Mood>>(
  (ref) => MoodsStateNotifier(ref),
);

final moodListModel = Provider<MoodsStateNotifier>(
  (ref) => ref.watch(moodListState.notifier),
);
