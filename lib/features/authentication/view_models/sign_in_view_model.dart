import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:proxima_nomadcoders/features/authentication/repositories/authentication_repository.dart';

// class SingInViewModel extends AsyncNotifier<void> {
//   late final AuthenticationRepository _authRepository;

//   @override
//   FutureOr<void> build() {
//     _authRepository = ref.read(authRepository);
//   }

//   Future<void> signIn({
//     required String email,
//     required String password,
//   }) async {
//     state = const AsyncValue.loading();
//     state = await AsyncValue.guard(
//       () => _authRepository.signIn(email: email, password: password),
//     );
//   }
// }

// final signInViewModel = AsyncNotifierProvider<SingInViewModel, void>(
//   () => SingInViewModel(),
// );
