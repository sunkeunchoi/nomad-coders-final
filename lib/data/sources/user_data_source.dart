import 'dart:io';

import '../../domain/entities/profile.dart';

abstract interface class UserDataSource {
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
