import '../entities/profile.dart';

abstract interface class SignIn {
  Future<Profile?> call(String email, String password);
}
