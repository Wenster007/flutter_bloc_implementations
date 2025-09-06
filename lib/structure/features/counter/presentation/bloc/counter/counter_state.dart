import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/counter.dart';

part 'counter_state.freezed.dart';

@Freezed()

class CounterState with _$CounterState {
  const factory CounterState.initial() = Initial;
  const factory CounterState.loading() = Loading;
  const factory CounterState.success(Counter counter) = Success;
  const factory CounterState.failure(String message) = Failure;
}