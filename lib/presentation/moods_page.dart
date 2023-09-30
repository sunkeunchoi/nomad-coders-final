import 'package:flutter/material.dart';

class MoodsPage extends StatelessWidget {
  const MoodsPage({super.key});
  static const routePath = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moods"),
      ),
      body: const Center(
        child: Text("Moods"),
      ),
    );
  }
}
