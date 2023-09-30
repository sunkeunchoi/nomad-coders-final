import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:proxima_nomadcoders/presentation/moods_page.dart';
import 'package:proxima_nomadcoders/presentation/sign_in_page.dart';

import '../data/sources/module.dart';
import '../presentation/sign_up_page.dart';

final _key = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    // initialLocation: MoodsPage.routePath,
    initialLocation: SignInPage.routePath,
    navigatorKey: _key,
    routes: [
      GoRoute(
        path: MoodsPage.routePath,
        builder: (context, state) => const MoodsPage(),
      ),
      GoRoute(
        path: SignInPage.routePath,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: SignUpPage.routePath,
        builder: (context, state) => const SignUpPage(),
      ),
    ],
    redirect: (context, state) {
      if (authState.isLoading || authState.hasError) return null;
      final isAuth = authState.valueOrNull != null;
      final isSignIn = SignInPage.routePath == state.path;
      final isSignUp = SignUpPage.routePath == state.path;
      if (isSignIn) {
        return isAuth ? MoodsPage.routePath : null;
      }
      if (isSignUp) {
        return isAuth ? MoodsPage.routePath : null;
      }
      return isAuth ? null : SignInPage.routePath;
    },
  );
});
