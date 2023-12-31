import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../generated/l10n.dart';
import 'sign_up_page.dart';
import 'view_models/module.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});
  static const routePath = "/sign-in";

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _focusNode = FocusNode();
  final bool _isPasswordVisible = false;
  late final model = ref.read(profileModel);
  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      setState(() {});
    });
    _passwordController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).app_name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const Spacer(),
            Text(
              S.of(context).login_screen_Title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Divider(
              color: Colors.transparent,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: S.of(context).login_screen_EmailHint,
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              keyboardType: TextInputType.text,
              autocorrect: false,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: S.of(context).login_screen_PasswordHint,
              ),
            ),
            const Divider(color: Colors.transparent),
            GestureDetector(
              onTap: () async {
                if (_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
                  await model.signIn(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        S.of(context).login_screen_LoginButton,
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Divider(color: Colors.transparent),
                    const AnimatedEmoji(
                      AnimatedEmojis.rocket,
                      size: 100,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                context.push(SignUpPage.routePath);
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  S.of(context).login_screen_CreateAccountButton,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
