import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        elevation: 60.6,
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions: [
          IconButton(icon: Icon(Icons.notification_important), onPressed: (){
            print("Hello at my Application");
          },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: ,
          //mainAxisSize: ,
          //crossAxisAlignment: ,
          children: [
            Container(
              child: Text(
                'First Line',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  fontSize: 15.0,
                ),
              ),
            ),
            Container(
              child: Text(
                'Second Line',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.red,
                  fontSize: 15.0,
                ),
              ),
            ),
            Container(
              child: Text(
                'Third Line',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.green,
                  fontSize: 15.0,
                ),
              ),
            ),
            Container(
              child: Text(
                'Fourth Line',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.amber,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
