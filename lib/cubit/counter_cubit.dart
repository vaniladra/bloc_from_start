import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));
  void increment() => emit(CounterState(
      counterValue: state.counterValue + 1,
      wasIncremented: true,
      dateTime: DateTime.now()));
  void decrement() => emit(CounterState(
      counterValue: state.counterValue - 1,
      wasIncremented: false,
      dateTime: DateTime.now()));
}
