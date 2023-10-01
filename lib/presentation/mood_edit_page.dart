import 'package:flutter/material.dart';
import 'package:proxima_nomadcoders/presentation/widgets/app_navigation.dart';

class MoodEditPage extends StatelessWidget {
  const MoodEditPage({super.key, this.id});
  final String? id;
  static const routePath = "/edit";

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
