import 'package:proxima_nomadcoders/domain/entities/profile.dart';
import 'package:proxima_nomadcoders/domain/repositories/user_repository.dart';

import '../sources/user_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userDataSource);
  final UserDataSource _userDataSource;
  Stream<String?> get authStateChanges => _userDataSource.authStateChanges;

  @override
  Future<Profile?> getCurrentUser() {
    return _userDataSource.getCurrentUser();
  }

  @override
  Future<Profile?> signIn({required String email, required String password}) async {
    await _userDataSource.signIn(email: email, password: password);
    return getCurrentUser();
  }

  @override
  Future<void> signOut() {
    return _userDataSource.signOut();
  }

  @override
  Future<Profile?> signUp({required String email, required String password}) async {
    await _userDataSource.signUp(email: email, password: password);
    return getCurrentUser();
  }
}
