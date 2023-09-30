import '../entities/profile.dart';

abstract interface class GetCurrentUser {
  Future<Profile?> call();
}
