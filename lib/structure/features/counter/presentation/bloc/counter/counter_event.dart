import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/counter.dart';
part 'counter_event.freezed.dart';


@Freezed()
abstract class CounterEvent with _$CounterEvent {
  const factory CounterEvent.incrementPressed(Counter current) = IncrementPressed;
  const factory CounterEvent.decrementPressed(Counter current) = DecrementPressed;
  const factory CounterEvent.resetPressed(Counter current) = ResetPressed;
  const factory CounterEvent.loadCount() = LoadCountInitiated;
}