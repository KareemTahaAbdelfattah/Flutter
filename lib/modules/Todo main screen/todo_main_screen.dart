import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/modules/todo_archived/todo_archiveds.dart';
import 'package:untitled/modules/todo_done/todo_done.dart';
import 'package:untitled/modules/todo_tasks/todo_tasks.dart';
import 'package:untitled/shared/Bloc/cubit.dart';
import 'package:untitled/shared/Bloc/states.dart';
import '../../shared/components/constants.dart';

/////     sqflite database     //////
//1. create database
//2. create tables
//3. open database
//4. insert to database
//5. get from database
//6. update in database
//7. delete from database


class TodoScreen extends StatelessWidget {

  Database? database;
  IconData fabIcon = Icons.add;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  var statusController = TextEditingController();


  bool isBottomSheet = false;
  var ScaffoldKey = GlobalKey<ScaffoldState>();
  var FormKey = GlobalKey<FormState>();

  /*@override
  void initState() {
    super.initState();
    CreateDatabase();
  }*/

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder:(context, state) => Scaffold(
          key: ScaffoldKey,
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
            ),
            title: Text(
              cubit.titles[cubit.CurrentIndex],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            actions: [
              IconButton(onPressed: () {
                print('Notifications');
              }, icon: Icon(Icons.notification_important),
              ),
            ],
          ),
          body: tasks.length == 0
              ? Center(child: CircularProgressIndicator())
              : cubit.Screens[cubit.CurrentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (isBottomSheet) {
                if (FormKey.currentState!.validate()) {
                  InsertDatabase(
                    title: titleController.text,
                    time: timeController.text,
                    data: dateController.text,
                  ).then((value) {
                    Navigator.pop(context);
                    isBottomSheet = false;
                   /* setState(() {
                      fabIcon = Icons.add;
                    },);*/
                  });
                }
              } else {
                ScaffoldKey.currentState
                    ?.showBottomSheet(
                      (context) =>
                      Container(
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Form(
                              key: FormKey,
                              child: Column
                                (
                                mainAxisSize: MainAxisSize.min,
                                children:
                                [
                                  TextFormField(
                                    controller: titleController,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Title must not be empty';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Task Title',
                                      prefixIcon: Icon(
                                        Icons.title,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  TextFormField(
                                    controller: timeController,
                                    keyboardType: TextInputType.datetime,
                                    onTap: () {
                                      showTimePicker(context: context,
                                        initialTime: TimeOfDay.now(),).then((
                                          value) {
                                        timeController.text =
                                            value!.format(context).toString();
                                      },);
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Time must not be empty';
                                      }
                                      //return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Task Time',
                                      prefixIcon: Icon(
                                        Icons.watch_later_outlined,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  TextFormField(
                                    controller: dateController,
                                    keyboardType: TextInputType.datetime,
                                    onTap: () {
                                      showDatePicker(context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.parse('2024-12-30'),
                                      ).then((value) {
                                        dateController.text =
                                            DateFormat.yMMMd().format(value!);
                                        print("Make data successfully");
                                      },).catchError((error) {
                                        print("error at ${error.toString()}");
                                      },);
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Data must not be empty';
                                      }
                                      //return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Task Date',
                                      prefixIcon: Icon(
                                        Icons.calendar_today,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                )
                    .closed
                    .then((value) {
                  isBottomSheet = false;
                 /* setState(() {
                    fabIcon = Icons.add;
                  },);*/
                });
                isBottomSheet = true;
                /*setState(() {
                  fabIcon = Icons.remove;
                });*/
              }
            },
            child: Icon(
              fabIcon,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: cubit.CurrentIndex,
            onTap: (index) {
              cubit.CurrentIndex = index;
             /* setState(() {
                CurrentIndex = index;
              });*/
            },
            items:
            [
              BottomNavigationBarItem(icon:
              Icon(
                Icons.menu,
              ),
                label: "Tasks",

              ),
              BottomNavigationBarItem(icon:
              Icon(
                Icons.check_circle_outline,
              ),
                label: "Done",
              ),
              BottomNavigationBarItem(icon:
              Icon
                (
                Icons.archive_outlined,
              ),
                label: "Archived",
              ),

            ],
          ),
        ),
      ),
    );
  }

  void CreateDatabase() async
  {
    database = await openDatabase(
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
          /*setState(() {
            tasks = value;
            print(value);
          });*/
        },);
        print("database opened");
      },
    );
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