import '../entities/counter.dart';

abstract class CounterRepository {
  Future<Counter> increment(Counter counter);
  Future<Counter> decrement(Counter counter);
  Future<Counter> reset(Counter counter);

  Future<void> saveCount(int value);
  Future<int> loadCount();
}