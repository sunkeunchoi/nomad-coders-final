import 'package:proxima_nomadcoders/domain/entities/mood.dart';
import 'package:proxima_nomadcoders/domain/repositories/mood_repository.dart';

import '../sources/mood_data_source.dart';

class MoodRepositoryImpl implements MoodRepository {
  MoodRepositoryImpl(this._moodDataSource);
  final MoodDataSource _moodDataSource;
  @override
  Future<void> addMood({required Mood mood}) {
    // TODO: implement addMood
    throw UnimplementedError();
  }

  @override
  Future<void> deleteMood({required Mood mood}) {
    // TODO: implement deleteMood
    throw UnimplementedError();
  }

  @override
  Future<Mood> getMoodById({required String id}) {
    // TODO: implement getMoodById
    throw UnimplementedError();
  }

  @override
  Future<List<Mood>> getMoods() {
    // TODO: implement getMoods
    throw UnimplementedError();
  }

  @override
  Future<void> updateMood({required Mood mood}) {
    // TODO: implement updateMood
    throw UnimplementedError();
  }
}
