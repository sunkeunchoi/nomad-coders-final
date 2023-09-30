import '../entities/mood.dart';

abstract interface class SaveMood {
  Future<void> call(Mood mood);
}
