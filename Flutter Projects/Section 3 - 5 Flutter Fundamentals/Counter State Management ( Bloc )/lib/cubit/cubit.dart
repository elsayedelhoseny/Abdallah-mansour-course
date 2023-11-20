import 'package:bloc/bloc.dart';
import 'package:counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<counterState> {
  CounterCubit() : super(counterInitState());

  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 1;

  void minus() {
    counter--;
    emit(counterMinusState());
  }

  void plus() {
    counter++;
    emit(counterPlusState());
  }
}
