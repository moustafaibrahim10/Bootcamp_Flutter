import 'package:bootcamp/modules/bmi_calculator/bmi_screen.dart';
import 'package:bootcamp/modules/todo_app/layout_screen/layout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      home: LayoutScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        primaryColor: Colors.teal,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Colors.teal,
          systemOverlayStyle: SystemUiOverlayStyle(
           statusBarColor: Colors.teal,
           statusBarIconBrightness: Brightness.light,
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

}