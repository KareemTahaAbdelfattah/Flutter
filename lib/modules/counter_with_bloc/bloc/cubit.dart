import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/modules/counter_with_bloc/bloc/states.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit(): super(CounterInitialState());

  // to be more easily during calling
  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void Plus()
  {
    counter++;
    emit(CounterPlusState());
  }
  void Minus()
  {
    counter--;
    emit(CounterMinusState());
  }
}