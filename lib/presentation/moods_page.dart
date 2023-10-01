import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../generated/l10n.dart';
import 'view_models/module.dart';

class MoodsPage extends ConsumerWidget {
  const MoodsPage({super.key});
  static const routePath = "/";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moods = ref.watch(moodListState);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(S.of(context).moods_screen_Title),
      ),
      body: moods.isEmpty
          ? Center(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AnimatedEmoji(
                        AnimatedEmojis.exclamationDouble,
                        size: 200,
                      ),
                      const Divider(
                        color: Colors.transparent,
                      ),
                      Text(
                        S.of(context).moods_no_moods,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Divider(
                        color: Colors.transparent,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            S.of(context).moods_add_mood,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : SingleChildScrollView(
              child: ListView.separated(
                itemBuilder: (
                  context,
                  index,
                ) {
                  return ListTile(
                    title: Text(moods[index].name),
                    subtitle: Text(moods[index].content),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        ref.read(moodListModel).delete(moods[index]);
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: moods.length,
              ),
            ),
    );
  }
}
