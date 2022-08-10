import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int cnt = 1;

  // 1. constructor.
  // 2. init state.
  // 3. build.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: ()
            {
              setState(() {
                cnt--;
                print(cnt);
              });

            },
                child: Text(
                  'MINUS',
                ),),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                '$cnt',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(onPressed: ()
            {
              setState(() {
                cnt++;
                print(cnt);
              });
            },
                child: Text(
                  'PLUS',
                ),),
          ],
        ),
      ),
    );
  }
}
