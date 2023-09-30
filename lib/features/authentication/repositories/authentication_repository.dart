import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class IAuthenticationRepository {
  Future<void> signIn({
    required String email,
    required String password,
  });
  Future<void> signUp({
    required String email,
    required String password,
  });
  Future<void> signOut();
  Stream<User?> authStateChanges();
}

class AuthenticationRepository implements IAuthenticationRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  @override
  Future<void> signIn({required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> signUp({required String email, required String password}) async {
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }
}

final authRepository = Provider((ref) => AuthenticationRepository());
final authState = StreamProvider(
  (ref) {
    final repo = ref.read(authRepository);
    return repo.authStateChanges();
  },
);
