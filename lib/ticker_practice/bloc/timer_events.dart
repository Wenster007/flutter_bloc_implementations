import 'package:equatable/equatable.dart';

sealed class TimerEvent extends Equatable{
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class TimerStarted extends TimerEvent {
  final int duration;

  TimerStarted(this.duration) : super();
}

class TimerPaused extends TimerEvent {}

class TimerResumed extends TimerEvent {}

class TimerReseted extends TimerEvent {}

class TimerTicked extends TimerEvent {
  final int duration;

  TimerTicked({required this.duration});
}