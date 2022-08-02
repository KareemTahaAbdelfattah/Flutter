import 'package:flutter/material.dart';
import 'package:untitled/Calculator.dart';
import 'package:untitled/calculator_bmi_result.dart';
import 'package:untitled/counter_screen.dart';
import 'package:untitled/messenger screen with list.dart';
import 'package:untitled/use%20screen.dart';

void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Calculator(),
    );
  }


}