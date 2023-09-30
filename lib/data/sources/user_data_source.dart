import 'dart:io';

import '../../domain/profiles/entities/profile.dart';

abstract interface class UserDataSource {
  Stream<String?> get authStateChanges;
  Future<void> signUp({required String email, required String password});
  Future<void> updateProfile(Profile user, File? profileImage);
  Future<void> signIn({
    required String email,
    required String password,
  });
  Future<void> signOut();
  Future<Profile?> getUser(String id);
  Future<Profile?> getCurrentUser();
}
