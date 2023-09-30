import '../entities/mood.dart';

abstract interface class DeleteMood {
  Future<void> call(Mood mood);
}
