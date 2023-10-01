import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proxima_nomadcoders/domain/moods/entities/mood.dart';
import 'package:proxima_nomadcoders/presentation/widgets/extensions.dart';
import 'package:proxima_nomadcoders/presentation/widgets/time_util.dart';

import '../generated/l10n.dart';
import 'view_models/module.dart';
import 'widgets/app_navigation.dart';

class MoodsPage extends ConsumerStatefulWidget {
  const MoodsPage({super.key});
  static const routePath = "/";

  @override
  ConsumerState<MoodsPage> createState() => _MoodsPageState();
}

class _MoodsPageState extends ConsumerState<MoodsPage> with AutomaticKeepAliveClientMixin<MoodsPage> {
  void delete(Mood mood) {
    ref.read(moodListModel).delete(mood).then((value) {
      ScaffoldMessenger.of(context).toast(S.of(context).moods_delete_success);
    }).catchError((e) {
      ScaffoldMessenger.of(context).toast(S.of(context).moods_delete_failed);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final moods = ref.watch(moodListState);
    return Scaffold(
      bottomNavigationBar: const AppNavigation(),
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
          : ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemBuilder: (
                context,
                index,
              ) {
                return GestureDetector(
                  onLongPress: () async {
                    var isConfirmed = await showAdaptiveDialog<bool>(
                        context: context,
                        builder: (context) {
                          return AlertDialog.adaptive(
                            title: Text(S.of(context).moods_delete_mood),
                            content: Text(S.of(context).moods_delete_mood_confirm),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                                child: Text(S.of(context).moods_delete_mood_cancel),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: Text(
                                  S.of(context).moods_delete_mood_delete,
                                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                                ),
                              ),
                            ],
                          );
                        });
                    if (isConfirmed == true) {
                      delete(moods[index]);
                    }
                  },
                  child: MoodCard(mood: moods[index]),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.transparent,
                );
              },
              itemCount: moods.length,
            ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class MoodCard extends StatelessWidget {
  const MoodCard({
    super.key,
    required this.mood,
  });

  final Mood mood;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Theme.of(context).colorScheme.inversePrimary,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedEmoji(
                AnimatedEmojis.fromCode(mood.name),
                size: 50,
              ),
              Expanded(
                child: Text(
                  mood.content,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
              ),
            ],
          ),
        ),
        Text(
          mood.createdAt.getTimeAgo(context),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        )
      ],
    );
  }
}
