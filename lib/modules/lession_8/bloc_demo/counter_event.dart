part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {
  final int value;

  IncrementEvent({this.value = 1});
}

class DecrementEvent extends CounterEvent {
  final int value;

  DecrementEvent({this.value = 1});
}
