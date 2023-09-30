import 'package:proxima_nomadcoders/domain/entities/user.dart';
import 'package:proxima_nomadcoders/domain/repositories/user_repository.dart';

import '../sources/user_data_source.dart';

class UserRepository implements IUserRepository {
  UserRepository(this._userDataSource);
  final UserDataSource _userDataSource;
  @override
  Future<User?> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<User?> signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<User?> signUp({required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
