import 'package:injectable/injectable.dart';
import '../entities/counter.dart';
import '../repository/counter_repository.dart';

@lazySingleton
class ResetCounter {
  CounterRepository repository;

  ResetCounter(this.repository);

  Future<Counter> call(Counter counter) async {
    return await repository.reset(counter);
  }
}