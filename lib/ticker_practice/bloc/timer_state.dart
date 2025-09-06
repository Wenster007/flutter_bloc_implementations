import 'package:equatable/equatable.dart';

sealed class TimerState extends Equatable {
  final int duration;

  TimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  TimerInitial(this.duration) : super(duration);

  final int duration;

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

class TimerInProgress extends TimerState {
  TimerInProgress(this.duration) : super(duration);

  final int duration;

  @override
  String toString() => 'TimerInProgress { duration: $duration }';
}

class TimerRunPause extends TimerState {
  TimerRunPause(this.duration) : super(duration);

  final int duration;

  @override
  String toString() => 'TimerStopped { duration : $duration }';
}

class TimerRunComplete extends TimerState {
  TimerRunComplete() : super(0);

  @override
  String toString() => 'TimerCompleted { duration : $duration }';
}
