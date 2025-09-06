import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';


@Freezed()
abstract class Counter with _$Counter {
  factory Counter({required int value}) = _Counter;
}
