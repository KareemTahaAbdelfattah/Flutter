import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/shared/Bloc/states.dart';
import '../../modules/todo_archived/todo_archiveds.dart';
import '../../modules/todo_done/todo_done.dart';
import '../../modules/todo_tasks/todo_tasks.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialStates());
  static AppCubit get(context) => BlocProvider.of(context);

  int CurrentIndex = 0;
  List<Map> tasks = [];

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

  void ChangeIndex(int index)
  {
    CurrentIndex = index;
    emit(AppBottomNavBarStates());
  }

  Database? database;
  void CreateDatabase()
  {
    openDatabase(
      'Todo.db',
      version: 1,
      onCreate: (database, version) {
        print("database created");
        database.execute(
            'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, time TEXT, data TEXT, status TEXT)')
            .then((value) {
          print("table creating");
        },).catchError((error) {
          print("error in table creating ${error.toString()}");
        },);
      },
      onOpen: (database) {
        GetDataFromDataBase(database).then((value) {
            tasks = value;
            print(value);
            emit(AppGetDataBase());
        },);
        print("database opened");
      },
    ).then((value)
    {
      database = value;
      emit(AppCreateDataBase());
    });
  }

  Future InsertDatabase({
    @required String? title,
    @required String? time,
    @required String? data,
  }) async
  {
    return await database?.transaction((txn) =>
        txn.rawInsert(
            'INSERT INTO tasks(title, time, data, status) VALUES("$title", "$time", "$data", "new")')
            .then((value) {
          print("$value successfully inserted");
        },).catchError((error) {
          print("error at inserted ${error.toString()}");
        },),);
  }

  Future<List<Map>> GetDataFromDataBase(database) async
  {
    return await database?.rawQuery('SELECT * FROM tasks');
  }

}