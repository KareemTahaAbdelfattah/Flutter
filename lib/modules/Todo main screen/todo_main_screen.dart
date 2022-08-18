import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/modules/todo_archived/todo_archiveds.dart';
import 'package:untitled/modules/todo_done/todo_done.dart';
import 'package:untitled/modules/todo_tasks/todo_tasks.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

/////     sqflite database     //////
//1. create database
//2. create tables
//3. open database
//4. insert to database
//5. get from database
//6. update in database
//7. delete from database


class _TodoScreenState extends State<TodoScreen> {

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

  @override
  void initState() {
    super.initState();
    CreateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          titles[CurrentIndex],
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            print('Notifications');
          }, icon: Icon(Icons.notification_important),
          ),
        ],
      ),
      body: Screens[CurrentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          getName().then((value)
          {
            print(value);
            print('Abdelfatah');
            //throw('أنا عملت ايرور !!!!!');
          }).catchError((error)
          {
            print('error is ${error.toString()}');
          });
        },
        child : Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        onTap: (index)
        {
           setState(() {
             CurrentIndex = index;
           });
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
    );
  }

  Future<String> getName() async
  {
    return 'Kareem Taha';
  }

  void CreateDatabase() async
  {
    var database = await openDatabase(
      'Todo.db',
      version: 1,
      onCreate: (database, version)
      {
        print("database created");
        database.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, data TEXT, time TEXT, status TEXT)').then((value)
        {
          print("table creating");
        },).catchError((error)
        {
          print("error in table creating ${error.toString()}");
        },);
      },
      onOpen: (database)
      {
        print("database opened");
      },
    );
  }

  void InsertDatabase()
  {

  }

}
