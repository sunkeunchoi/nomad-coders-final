import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/profiles/entities/profile.dart';
import '../../domain/profiles/usecases/module.dart';

class ProfileStateNotifier extends StateNotifier<Profile?> {
  ProfileStateNotifier(this.ref) : super(null) {
    loadProfile();
  }
  final Ref ref;
  late final getProfile = ref.read(getCurrentUserUseCase);
  Future<void> loadProfile() async {
    state = await getProfile();
  }

  Future<void> signIn({required String email, required String password}) async {
    await ref.read(signInUseCase).call(email, password);
    await loadProfile();
  }

  Future<void> signOut() async {
    await ref.read(signOutUseCase).call();
  }

  Future<void> signUp({required String email, required String password}) async {
    await ref.read(signUpUseCase).call(email, password);
  }

  String? get userId => state?.id;
}
