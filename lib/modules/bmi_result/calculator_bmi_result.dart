import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class resultcalculatorbmi extends StatelessWidget {

  final int? Result;
  final int? Height;
  final int? Weight;
  final int? Age;
  final int? isMale;

  resultcalculatorbmi(
  {
    @required this.isMale,
    @required this.Age,
    @required this.Height,
    @required this.Weight,
    @required this.Result,
  });


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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '--Your Result--',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Gender : ${isMale == 1 ? 'Male' : 'Female'}',
                style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Age : ${Age}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Height : ${Height}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Weight : ${Weight}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Your BMI : ${Result}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Text(
        'By Kareem Taha Abdelfatah \n @2022 El-Obour Egypt - All rights reserved.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
