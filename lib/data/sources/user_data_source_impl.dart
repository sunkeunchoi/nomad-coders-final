import "dart:io";

import "package:firebase_auth/firebase_auth.dart";

import '../../domain/entities/profile.dart';
import 'user_data_source.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_storage/firebase_storage.dart";

class UserDataSourceImpl implements UserDataSource {
  final String tableName = "users";
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<void> signUp({required String email, required String password}) async {
    var userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    if (userCredential.user == null) {
      throw Exception("User is null");
    }
    var user = Profile(
      id: userCredential.user!.uid,
      email: email,
      name: userCredential.user!.displayName ?? email,
      photoUrl: userCredential.user?.photoURL,
    );
    await _firebaseFirestore.collection(tableName).doc(user.id).set(user.toJson());
  }

  @override
  Future<void> signIn({required String email, required String password}) {
    return _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  @override
  Future<void> updateProfile(Profile user, File? profileImage) async {
    if (profileImage != null) {
      var ref = _firebaseStorage.ref("users/${user.id}");
      var uploadTask = ref.putFile(profileImage);
      var url = await uploadTask.then((value) => value.ref.getDownloadURL());
      user = user.copyWith(photoUrl: url);
    }

    return _firebaseFirestore.collection(tableName).doc(user.id).update(user.toJson());
  }

  @override
  Future<Profile?> getCurrentUser() {
    final id = _firebaseAuth.currentUser?.uid;
    if (id == null) {
      return Future.value(null);
    }
    return _firebaseFirestore.collection(tableName).doc(id).get().then((value) {
      return Profile.fromJson(value.data()!);
    });
  }

  @override
  Future<Profile?> getUser(String id) {
    return _firebaseFirestore.collection(tableName).doc(id).get().then((value) {
      return Profile.fromJson(value.data()!);
    });
  }
}
