import 'package:go_router/go_router.dart';
import 'package:proxima_nomadcoders/presentation/moods_page.dart';
import 'package:proxima_nomadcoders/presentation/sign_in_page.dart';

import '../presentation/sign_up_page.dart';

// final router = Provider((ref) {
//   // final user = ref.watch(authState);
//   // final uid = user.value?.uid;
//   // final isLoggedIn = uid != null && uid.isNotEmpty;
//   return GoRouter(
//     initialLocation: HomePage.routeURL,
//     // redirect: (context, state) {
//     //   final isLoggedIn = ref.read(authRepository).isLoggedIn;
//     //   if (!isLoggedIn) {
//     //     if (state.subloc != SignUpScreen.routeURL && state.subloc != LoginScreen.routeURL) {
//     //       return SignUpScreen.routeURL;
//     //     }
//     //   }
//     //   return null;
//     // },
//     routes: [
//       GoRoute(
//         name: HomePage.routeName,
//         path: HomePage.routeURL,
//         builder: (context, state) => const HomePage(),
//       ),
//     ],
//   );
// });

final router = GoRouter(
  // initialLocation: MoodsPage.routePath,
  initialLocation: SignInPage.routePath,
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
);
