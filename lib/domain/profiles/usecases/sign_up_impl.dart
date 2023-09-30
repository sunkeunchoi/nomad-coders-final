import 'package:proxima_nomadcoders/domain/profiles/repositories/user_repository.dart';

import '../entities/profile.dart';
import 'sign_up.dart';

class SignUpImpl implements SignUp {
  final UserRepository _repository;

  SignUpImpl(this._repository);

  @override
  Future<Profile?> call(email, password) async {
    return await _repository.signUp(email: email, password: password);
  }
}
