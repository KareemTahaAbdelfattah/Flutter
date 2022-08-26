import 'package:flutter/material.dart';
import 'package:untitled/shared/Bloc/cubit.dart';
import 'package:untitled/shared/components/constants.dart';
import '../../shared/components/components.dart';

class TodoTasks extends StatefulWidget {
  const TodoTasks({Key? key}) : super(key: key);

  @override
  State<TodoTasks> createState() => _TodoTasksState();
}

class _TodoTasksState extends State<TodoTasks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
          itemBuilder: (context, index) => DefaultTaskScreen(AppCubit.get(context).tasks[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[400],
          ),
        ),
          itemCount: AppCubit.get(context).tasks.length),
    );
  }
}
