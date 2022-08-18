import 'package:flutter/material.dart';

class TodoArchived extends StatefulWidget {
  const TodoArchived({Key? key}) : super(key: key);

  @override
  State<TodoArchived> createState() => _TodoArchivedState();
}

class _TodoArchivedState extends State<TodoArchived> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Archived Screen",
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
