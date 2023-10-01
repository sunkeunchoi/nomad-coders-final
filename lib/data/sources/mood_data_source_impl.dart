import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proxima_nomadcoders/domain/moods/entities/mood.dart';

import 'mood_data_source.dart';

class MoodDataSourceImpl implements MoodDataSource {
  final String tableName = 'moods';
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<void> add({required Mood mood}) async {
    await _firebaseFirestore.collection(tableName).add(mood.toJson());
  }

  @override
  Future<void> delete({required Mood mood}) async {
    var doc = await _firebaseFirestore.collection(tableName).where("id", isEqualTo: mood.id).get();
    var id = doc.docs.firstOrNull?.id;
    if (id == null) return;
    await _firebaseFirestore.collection(tableName).doc(id).delete();
  }

  @override
  Future<Mood?> getById({required String id}) async {
    return _firebaseFirestore.collection(tableName).doc(id).get().then((value) {
      var data = value.data();
      if (data == null) return null;
      return Mood.fromJson(data);
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
        .orderBy(
          "createdAt",
          descending: true,
        )
        .get()
        .then((value) {
      return value.docs.map((e) => Mood.fromJson(e.data())).toList();
    });
  }

  @override
  Future<void> update({required Mood mood}) async {
    await _firebaseFirestore.collection(tableName).doc(mood.id).update(mood.toJson());
  }
}
