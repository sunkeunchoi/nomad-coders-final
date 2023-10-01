import '../entities/profile.dart';

abstract interface class UserRepository {
  String? get userId;

  Future<Profile?> signIn({
    required String email,
    required String password,
  });
  Future<Profile?> signUp({
    required String email,
    required String password,
  });
  Future<void> signOut();
  Future<Profile?> getCurrentUser();
  Stream<String?> get authStateChanges;
}
