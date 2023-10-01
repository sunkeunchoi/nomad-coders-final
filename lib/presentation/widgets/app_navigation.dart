import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:proxima_nomadcoders/presentation/mood_edit_page.dart';

import '../../core/module.dart';
import '../../generated/l10n.dart';
import '../moods_page.dart';
import '../settings_page.dart';

class AppNavigation extends ConsumerWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.read(tabModel);
    return BottomNavigationBar(
      selectedFontSize: 16,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(FluentIcons.home_24_regular),
          label: S.of(context).bottom_nav_label_home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(FluentIcons.compose_24_filled),
          label: S.of(context).bootom_nav_label_post,
        ),
        BottomNavigationBarItem(
          icon: const Icon(FluentIcons.person_24_regular),
          label: S.of(context).bootom_nav_label_profile,
        ),
      ],
      currentIndex: model.tab,
      onTap: (index) {
        if (index == model.tab) return;
        model.setTab(index);
        switch (index) {
          case 0:
            context.push(MoodsPage.routePath);
            break;
          case 1:
            context.push(MoodEditPage.routePath);
            break;
          case 2:
            context.push(SettingsPage.routePath);
            break;
        }
      },
    );
  }
}
