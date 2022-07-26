import 'package:flutter/material.dart';
import 'package:untitled/messenger screen with list.dart';

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
      home : Messengerscreenwithlist(),
    );
  }


}