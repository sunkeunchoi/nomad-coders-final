import '../entities/mood.dart';

abstract interface class GetMoods {
  Future<List<Mood>> call();
}
