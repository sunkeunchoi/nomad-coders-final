import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabStateNotifier extends StateNotifier<int> {
  TabStateNotifier(this.ref) : super(0);
  final Ref ref;
  void setTab(int index) async {
    state = index;
  }

  get tab => state;
}

final tabState = StateNotifierProvider<TabStateNotifier, int>(
  (ref) => TabStateNotifier(ref),
);

final tabModel = Provider<TabStateNotifier>(
  (ref) => ref.watch(tabState.notifier),
);
