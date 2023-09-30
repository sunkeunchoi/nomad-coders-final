import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:proxima_nomadcoders/pages/home_page.dart';

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

final router = GoRouter(routes: []);
