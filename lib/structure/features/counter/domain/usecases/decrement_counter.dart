import 'package:injectable/injectable.dart';

import '../entities/counter.dart';
import '../repository/counter_repository.dart';

@lazySingleton
class DecrementCounter {
  CounterRepository repository;

  DecrementCounter(this.repository);

  Future<Counter> call(Counter counter) async {
    final newCounter = await repository.decrement(counter);
    repository.saveCount(newCounter.value);
    return newCounter;
  }
}