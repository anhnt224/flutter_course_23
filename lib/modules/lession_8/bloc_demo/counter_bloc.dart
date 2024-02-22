import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(CounterState initialState) : super(initialState) {
    on<IncrementEvent>((event, emit) {
      final newValue = state.counter + event.value;
      emit(CounterState(counter: newValue));
    });

    on<DecrementEvent>((event, emit) {
      final newValue = state.counter + event.value;
      emit(CounterState(counter: newValue));
    });
  }
}
