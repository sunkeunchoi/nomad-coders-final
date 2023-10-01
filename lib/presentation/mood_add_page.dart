import 'package:flutter/material.dart';
import 'package:proxima_nomadcoders/presentation/widgets/app_navigation.dart';

class MoodAddPage extends StatelessWidget {
  const MoodAddPage({super.key});
  static const routePath = "/add";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Mood"),
      ),
      body: const Center(
        child: Text("Add Mood"),
      ),
      bottomNavigationBar: const AppNavigation(),
    );
  }
}
