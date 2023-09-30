import '../repositories/user_repository.dart';
import 'sign_out.dart';

class SignOutImpl implements SignOut {
  final UserRepository _repository;

  SignOutImpl(this._repository);

  @override
  Future<void> call() async {
    return await _repository.signOut();
  }
}
