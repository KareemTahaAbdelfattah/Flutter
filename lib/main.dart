import 'package:flutter/material.dart';
import 'package:untitled/massenger_screen.dart';

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
      home : messengerscreen(),
    );
  }


}