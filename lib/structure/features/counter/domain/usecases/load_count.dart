import 'package:injectable/injectable.dart';

import '../repository/counter_repository.dart';

@lazySingleton
class LoadCount {
  CounterRepository counterRepository;

  LoadCount(this.counterRepository);

  Future<int> call() async {
    return await counterRepository.loadCount();
  }
}
