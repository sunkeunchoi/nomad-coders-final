import 'package:proxima_nomadcoders/domain/profiles/repositories/user_repository.dart';

import '../entities/profile.dart';
import 'get_current_user.dart';

class GetCurrentUserImpl implements GetCurrentUser {
  final UserRepository repository;

  GetCurrentUserImpl(this.repository);

  @override
  Future<Profile?> call() async {
    return await repository.getCurrentUser();
  }
}
