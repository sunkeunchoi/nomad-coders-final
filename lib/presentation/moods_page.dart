import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        title: const Text("Moods"),
      ),
      body: moods.isEmpty
          ? const Center(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedEmoji(
                      AnimatedEmojis.exclamationDouble,
                      size: 200,
                    ),
                    Text("No moods yet"),
                  ],
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
