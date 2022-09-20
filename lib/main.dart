import 'package:flutter/material.dart';
import 'package:movies/homescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute:Home_screen.routeName,

      routes:{Home_screen.routeName: (context) => Home_screen(),},);
  }
}