import 'package:proxima_nomadcoders/domain/entities/mood.dart';
import 'package:proxima_nomadcoders/domain/repositories/mood_repository.dart';

import '../sources/mood_data_source.dart';

class MoodRepositoryImpl implements MoodRepository {
  MoodRepositoryImpl(this._moodDataSource);
  final MoodDataSource _moodDataSource;
  @override
  Future<void> add({required Mood mood}) async => _moodDataSource.add(mood: mood);

  @override
  Future<void> delete({required Mood mood}) async => _moodDataSource.delete(mood: mood);

  @override
  Future<Mood?> getById({required String id}) async => _moodDataSource.getById(id: id);

  @override
  Future<List<Mood>> getAll() async => _moodDataSource.getAll();

  @override
  Future<void> update({required Mood mood}) => _moodDataSource.update(mood: mood);
}
