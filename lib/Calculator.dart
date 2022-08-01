import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculator extends StatefulWidget {

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(4, 4, 50, 1),
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(4, 4, 50, 1),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 70.0,
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 15.0,
                                ),
                              ),
                          ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromRGBO(33, 33, 65, 1),
                          ),
                        ),
                        ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 70.0,
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromRGBO(33, 33, 65, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromRGBO(40, 29, 69, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 17.0
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '180',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 50.0,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        thumbColor: Colors.pink,
                        activeColor: Colors.pink,
                        value: 170.0,
                        min: 80.0,
                        max: 220.0,
                        onChanged: (value)
                        {
                          print(value.round());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey[500],
                                ),
                              ),
                              Text(
                                '60',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 50.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(

                                    backgroundColor: Colors.grey[600],
                                    onPressed:(){},
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 25.0,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[600],
                                    onPressed:(){},
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromRGBO(40, 29, 69, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey[500],
                                ),
                              ),
                              Text(
                                '28',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 50.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[600],
                                    onPressed:(){},
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 25.0,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[600],
                                    onPressed:(){},
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                      size: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromRGBO(40, 29, 69, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
              ),
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              color: Colors.pink,
              child: MaterialButton(
                onPressed:()
                {

                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
