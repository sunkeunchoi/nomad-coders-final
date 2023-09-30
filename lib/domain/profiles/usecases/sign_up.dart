import '../entities/profile.dart';

abstract interface class SignUp {
  Future<Profile?> call(String email, String password);
}
