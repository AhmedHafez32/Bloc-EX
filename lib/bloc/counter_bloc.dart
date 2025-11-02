import 'package:bloc/bloc.dart';
import 'package:bloc_ex/bloc/counter_events.dart';
import 'package:bloc_ex/bloc/counter_states.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  CounterBloc() : super(const CounterState(0)) {
    on<Increment>(_incrementCounter);
    on<Decrement>(_decrementCounter);
  }

  void _incrementCounter(CounterEvents event, Emitter<CounterStates> emit) {
    final x = state as CounterState;
    emit(CounterState(x.counter + 1));
  }

  void _decrementCounter(CounterEvents event, Emitter<CounterStates> emit) {
    final x = state as CounterState;
    emit(CounterState(x.counter - 1));
  }
}
