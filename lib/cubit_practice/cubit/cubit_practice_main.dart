import 'package:block_freezed_practice/cubit_practice/cubit/counter_cubit.dart';
import 'package:block_freezed_practice/cubit_practice/cubit/simple_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPracticeMain {
  final cubitA = CounterCubit(0);
  final cubitB = CounterCubit(10);


  CubitPracticeMain() {
    cubitB.increment();

  }

}