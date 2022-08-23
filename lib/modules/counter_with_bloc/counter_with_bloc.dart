import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/modules/counter_with_bloc/bloc/cubit.dart';
import 'package:untitled/modules/counter_with_bloc/bloc/states.dart';

class CounterScreenWithBloc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Counter',
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: ()
                {
                  CounterCubit.get(context).Minus();
                },
                  child: Text(
                    'MINUS',
                  ),),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(onPressed: ()
                {
                  CounterCubit.get(context).Plus();
                },
                  child: Text(
                    'PLUS',
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
