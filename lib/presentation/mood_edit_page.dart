import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:proxima_nomadcoders/core/module.dart';
import 'package:proxima_nomadcoders/presentation/view_models/module.dart';
import 'package:proxima_nomadcoders/presentation/widgets/app_navigation.dart';
import 'package:proxima_nomadcoders/presentation/widgets/extensions.dart';

import '../domain/moods/entities/mood.dart';
import '../generated/l10n.dart';
import 'moods_page.dart';
import 'widgets/mood_emoji.dart';

class MoodEditPage extends ConsumerStatefulWidget {
  const MoodEditPage({super.key, this.id});
  final String? id;
  static const routePath = "/edit";
  static const routePathWithId = "/edit/:id";

  @override
  ConsumerState<MoodEditPage> createState() => _MoodEditPageState();
}

class _MoodEditPageState extends ConsumerState<MoodEditPage> {
  final TextEditingController content = TextEditingController();
  late final model = ref.read(moodListModel);
  Mood? mood;
  bool edited = false;
  int? selectedEmoji;
  void change() {
    if (mounted) {
      setState(() {
        edited = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    content.addListener(change);
    if (widget.id != null) {
      model.get(widget.id!).then((value) {
        if (value == null) return;
        content.text = value.content;
        selectedEmoji = emojiIds.indexOf(value.name);
        mood = value;
        if (mounted) {
          setState(() {
            edited = false;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(S.of(context).moods_screen_Title),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            // Text(
            //   widget.id == null ? S.of(context).mood_edit_new_mood : S.of(context).mood_edit_edit_mood,
            //   style: Theme.of(context).textTheme.titleLarge,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).mood_edit_content,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            TextField(
              controller: content,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: S.of(context).mood_edit_content_hint,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).mood_edit_name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            Expanded(
              child: Wrap(
                children: emojiIds.asMap().entries.map((e) {
                  return GestureDetector(
                    onTap: () {
                      if (mounted) {
                        setState(() {
                          selectedEmoji = e.key;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selectedEmoji == e.key ? Theme.of(context).colorScheme.primaryContainer : null,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MoodEmoji(code: e.value),
                    ),
                  );
                }).toList(),
              ),
            ),
            GestureDetector(
              onTap: () async {
                if (selectedEmoji == null) return;
                if (!edited) return;
                if (content.text.isEmpty) return;
                var userId = ref.read(profileModel).userId;
                if (userId == null) return;

                var item = mood != null
                    ? mood!.copyWith(
                        content: content.text,
                        name: emojiIds[selectedEmoji!],
                        updatedAt: DateTime.now().millisecondsSinceEpoch,
                      )
                    : Mood.create(
                        userId: userId,
                        content: content.text,
                        name: emojiIds[selectedEmoji!],
                      );

                final messenger = ScaffoldMessenger.of(context);
                model.add(item).then((value) {
                  messenger.toast(S.of(context).mood_edit_saved_success);
                  ref.read(tabModel).setTab(0);
                  context.go(MoodsPage.routePath);
                }).catchError((e) {
                  messenger.toast(S.of(context).mood_edit_saved_failed);
                });
              },
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
                  S.of(context).mood_edit_save,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
              ),
            ),
            const Divider(color: Colors.transparent)
          ],
        ),
      ),
      bottomNavigationBar: const AppNavigation(),
    );
  }
}
