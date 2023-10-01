import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proxima_nomadcoders/data/repositories/modules.dart';
import 'package:proxima_nomadcoders/domain/profiles/usecases/get_current_user.dart';

import 'get_current_user_impl.dart';
import 'sign_in.dart';
import 'sign_in_impl.dart';
import 'sign_out.dart';
import 'sign_out_impl.dart';
import 'sign_up.dart';
import 'sign_up_impl.dart';

final getCurrentUserUseCase = Provider<GetCurrentUser>((ref) {
  var repository = ref.read(userRepository);
  return GetCurrentUserImpl(repository);
});

final signInUseCase = Provider<SignIn>((ref) {
  var repository = ref.read(userRepository);
  return SignInImpl(repository);
});

final signUpUseCase = Provider<SignUp>((ref) {
  var repository = ref.read(userRepository);
  return SignUpImpl(repository);
});

final signOutUseCase = Provider<SignOut>((ref) {
  var repository = ref.read(userRepository);
  return SignOutImpl(repository);
});
