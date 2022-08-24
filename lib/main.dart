import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/modules/Todo main screen/todo_main_screen.dart';
import 'package:untitled/modules/bmi_screen/Calculator.dart';
import 'package:untitled/modules/bmi_result/calculator_bmi_result.dart';
import 'package:untitled/modules/counter/counter_screen.dart';
import 'package:untitled/modules/login/login_screen.dart';
import 'package:untitled/modules/messenger_screen_with_list/messenger%20screen%20with%20list.dart';
import 'package:untitled/modules/user_screen/use%20screen.dart';
import 'package:untitled/shared/bloc_observer.dart';



void main()
{
  runApp(myapp());
  Bloc.observer = MyBlocObserver();
}

class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : TodoScreen(),
    );
  }


}