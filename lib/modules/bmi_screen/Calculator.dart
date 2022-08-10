import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/modules/bmi_result/calculator_bmi_result.dart';

class Calculator extends StatefulWidget {

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  double height = 170.0;
  int weight = 60;
  int age = 28;
  double result = 24.0;
  int Male = 1;

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
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              Male = 1;
                            });
                          },
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
                              color: Male == 1 ? Colors.purple : Color.fromRGBO(33, 33, 65, 1),
                            ),
                          ),
                        ),
                        ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              Male = 0;
                            });
                          },
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
                              color: Male == 1 ? Color.fromRGBO(33, 33, 65, 1) : Colors.purple,
                            ),
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
                            '${height.round()}',
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
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        onChanged: (value)
                        {
                          setState(() {
                            height = value;
                          });
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
                                '${weight}',
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
                                    onPressed:()
                                    {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'weight--',
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 25.0,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[600],
                                    onPressed:()
                                    {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight++',
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
                                '${age}',
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
                                    onPressed:()
                                    {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: 'age--',
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 25.0,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Colors.grey[600],
                                    onPressed:()
                                    {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age++',
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
                  result = weight / pow(height / 100, 2);
                  print(result.round());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => resultcalculatorbmi(
                        isMale : Male,
                        Age: age,
                        Height: height.round(),
                        Weight: weight,
                        Result: result.round(),
                      ),
                    ),
                  );
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
