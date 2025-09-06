import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import '../../../domain/entities/counter.dart';
import '../../../domain/usecases/decrement_counter.dart';
import '../../../domain/usecases/increment_counter.dart';
import '../../../domain/usecases/load_count.dart';
import '../../../domain/usecases/reset_counter.dart';
import 'counter_event.dart';
import 'counter_state.dart';

@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final IncrementCounter incrementCounterUseCase;
  final DecrementCounter decrementCounterUseCase;
  final ResetCounter resetCounterUseCase;
  final LoadCount loadCountUseCase;

  CounterBloc(
    this.incrementCounterUseCase,
    this.decrementCounterUseCase,
    this.resetCounterUseCase,
    this.loadCountUseCase,
  ) : super(const CounterState.initial()) {
    on<CounterEvent>((event, emit) async {
      await event.map(
        incrementPressed: (e) async {
          emit(const CounterState.loading());
          try {
            final counter = await incrementCounterUseCase(e.current);
            emit(CounterState.success(counter));
          } catch (e) {
            emit(CounterState.failure(e.toString()));
          }
        },
        decrementPressed: (e) async {
          emit(const CounterState.loading());
          try {
            final counter = await decrementCounterUseCase(e.current);
            emit(CounterState.success(counter));
          } catch (e) {
            emit(CounterState.failure(e.toString()));
          }
        },
        resetPressed: (e) async {
          emit(const CounterState.loading());
          try {
            final counter = await resetCounterUseCase(e.current);
            emit(CounterState.success(counter));
          } catch (e) {
            emit(CounterState.failure(e.toString()));
          }
        },
        loadCount: (e) async {
          final savedValue = await loadCountUseCase();
          emit(CounterState.success(Counter(value: savedValue)));
        },
      );
    }, transformer: debounce(const Duration(milliseconds: 300)));
  }
}

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}
