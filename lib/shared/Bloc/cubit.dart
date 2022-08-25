import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/shared/Bloc/states.dart';

import '../../modules/todo_archived/todo_archiveds.dart';
import '../../modules/todo_done/todo_done.dart';
import '../../modules/todo_tasks/todo_tasks.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialStates());
  static AppCubit get(context) => BlocProvider.of(context);

  int CurrentIndex = 0;

  List<Widget> Screens =
  [
    TodoTasks(),
    TodoDone(),
    TodoArchived(),
  ];

  List<String> titles =
  [
    'Current Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void ChangeStateOfBottomNavBar(index)
  {
    CurrentIndex = index;
    emit(AppBottomNavBarStates());
  }
}