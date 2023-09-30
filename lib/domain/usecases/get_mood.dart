import '../entities/mood.dart';

abstract interface class GetMood {
  Future<Mood?> call(String id);
}
