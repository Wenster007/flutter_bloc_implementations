import 'package:injectable/injectable.dart';

import '../entities/counter.dart';
import '../repository/counter_repository.dart';

@lazySingleton

class IncrementCounter {
  CounterRepository repository;

  IncrementCounter(this.repository);

  Future<Counter> call(Counter counter) async {
    final newCounter = await repository.increment(counter);
    repository.saveCount(newCounter.value);
    return newCounter;
  }
}