import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.blue,
  @required String? text,
  @required function,
}) => Container(
  color: color,
  width: width,
  child: MaterialButton(
    onPressed: function,
    child: Center(
    child: Text(
          text!.toUpperCase(),
          style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
            ),
          ),
        ),
      ),
    );



