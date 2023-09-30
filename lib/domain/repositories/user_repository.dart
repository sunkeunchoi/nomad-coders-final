import '../entities/user.dart';

abstract interface class IUserRepository {
  Future<User?> signIn({
    required String email,
    required String password,
  });
  Future<User?> signUp({
    required String email,
    required String password,
  });
  Future<void> signOut();
  Future<User?> getCurrentUser();
}
