
import 'package:block_freezed_practice/cubit_practice/counter_bloc/counter_bloc.dart';

class CounterPracticeMain {
  final bloc = CounterBloc();

  Future<void> run() async {
    print(bloc.state); // 0
    bloc.add(CounterIncrementPressed());
    await Future.delayed(Duration.zero);

    print(bloc.state); // 1
    bloc.add(CounterIncrementPressed());
    await Future.delayed(Duration.zero);

    print(bloc.state); // 2
    await bloc.close();
  }
}
