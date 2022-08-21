import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/modules/Todo main screen/todo_main_screen.dart';

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

Widget DefaultTaskScreen(Map models) => Row(
  children: [
    CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.blueAccent[500],
      child: Center(
        child: Text(
          '${models['time']}',
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    SizedBox(
      width: 15.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${models['title']}',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            '${models['data']}',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    )
  ],
);

