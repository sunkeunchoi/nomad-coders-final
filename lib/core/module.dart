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

class ThemeStateNotifier extends StateNotifier<bool> {
  ThemeStateNotifier(this.ref) : super(false);
  final Ref ref;
  void setTheme(bool isDark) {
    state = isDark;
  }

  void toggleTheme() {
    state = !state;
  }

  get theme => state;
}

final themeState = StateNotifierProvider<ThemeStateNotifier, bool>(
  (ref) => ThemeStateNotifier(ref),
);
final themeModel = Provider<ThemeStateNotifier>(
  (ref) => ref.watch(themeState.notifier),
);

class LocaleStateNotifier extends StateNotifier<String> {
  LocaleStateNotifier(this.ref) : super("en");
  final Ref ref;
  void setLocale(String locale) {
    state = locale;
  }

  void toggleLocale() {
    state = state == "en" ? "ko" : "en";
  }

  get locale => state;
}

final localeState = StateNotifierProvider<LocaleStateNotifier, String>(
  (ref) => LocaleStateNotifier(ref),
);
final localeModel = Provider<LocaleStateNotifier>(
  (ref) => ref.watch(localeState.notifier),
);
