import 'package:counter/cubit/cubit.dart';
import 'package:counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, counterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
        appBar: AppBar(
                title: Center(child: Text('Counter')),
              ),
              body: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                      CounterCubit.get(context).minus();
                      },
                      child: Text(
                        'MINUS',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                     '${CounterCubit.get(context).counter}' ,
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {
                      CounterCubit.get(context).plus();
                      
                      },
                      child: Text(
                        'PLUS',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
      );},));}}