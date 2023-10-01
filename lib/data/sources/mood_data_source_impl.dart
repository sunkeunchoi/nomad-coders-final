import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proxima_nomadcoders/domain/moods/entities/mood.dart';

import 'mood_data_source.dart';

class MoodDataSourceImpl implements MoodDataSource {
  final String tableName = 'moods';
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<void> add({required Mood mood}) async {
    _firebaseFirestore.collection(tableName).add(mood.toJson());
  }

  @override
  Future<void> delete({required Mood mood}) async {
    _firebaseFirestore.collection(tableName).doc(mood.id).delete();
  }

  @override
  Future<Mood?> getById({required String id}) async {
    return _firebaseFirestore.collection(tableName).doc(id).get().then((value) {
      return Mood.fromJson(value.data()!);
    });
  }

  @override
  Future<List<Mood>> getAll(String userId) async {
    return _firebaseFirestore
        .collection(tableName)
        .where(
          'userId',
          isEqualTo: userId,
        )
        .get()
        .then((value) {
      return value.docs.map((e) => Mood.fromJson(e.data())).toList();
    });
  }

  @override
  Future<void> update({required Mood mood}) async {
    _firebaseFirestore.collection(tableName).doc(mood.id).update(mood.toJson());
  }
}
