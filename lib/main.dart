import 'package:bootcamp/modules/bmi_calculator/bmi_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
//Class MyApp
// parameter myApp
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}