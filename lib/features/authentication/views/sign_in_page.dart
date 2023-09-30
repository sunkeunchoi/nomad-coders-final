import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static const routeName = "sign-in";
  static const routeURL = "/sign-in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: const Center(
        child: Text("Sign In"),
      ),
    );
  }
}
