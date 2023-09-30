import 'package:proxima_nomadcoders/domain/profiles/repositories/user_repository.dart';

import '../entities/profile.dart';
import 'sign_in.dart';

class SignInImpl implements SignIn {
  final UserRepository _repository;

  SignInImpl(this._repository);

  @override
  Future<Profile?> call(String email, String password) async {
    return await _repository.signIn(email: email, password: password);
  }
}
