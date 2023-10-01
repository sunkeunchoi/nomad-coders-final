import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proxima_nomadcoders/core/module.dart';

import '../generated/l10n.dart';
import 'view_models/module.dart';
import 'widgets/app_navigation.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});
  static const routePath = "/settings";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final theme = ref.read(themeModel);
    late final locale = ref.read(localeModel);
    return Scaffold(
      bottomNavigationBar: const AppNavigation(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          S.of(context).settings_screen_Title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
      body: Column(
        children: [
          // ! AppBar Background Color is not working properly
          // ListTile(
          //   title: Text(S.of(context).settings_theme),
          //   subtitle: Text(S.of(context).settings_theme_subtitle),
          //   trailing: Switch(
          //     value: ref.watch(themeState),
          //     onChanged: (value) {
          //       theme.toggleTheme();
          //     },
          //   ),
          // ),
          ListTile(
            title: Text(S.of(context).settings_locale),
            subtitle: Text(S.of(context).settings_locale_subtitle),
            trailing: Switch(
              value: ref.watch(localeState) == "en",
              onChanged: (value) {
                locale.toggleLocale();
              },
            ),
          ),
          TextButton(
            onPressed: () async {
              await ref.read(profileModel).signOut();
            },
            child: Text(
              S.of(context).settings_logout,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
