import 'package:flutter/material.dart';

class TodoDone extends StatefulWidget {
  const TodoDone({Key? key}) : super(key: key);

  @override
  State<TodoDone> createState() => _TodoDoneState();
}

class _TodoDoneState extends State<TodoDone> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Done Screen",
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
