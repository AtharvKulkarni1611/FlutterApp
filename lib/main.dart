import 'package:flutter/material.dart';
import 'package:test_app/home_page.dart';

void main() {
  runApp(MyApp()); //This is a method
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for ui

    //num can be used as int and double
    //const can be used for constant value, here pie can be const

    return MaterialApp(
      home: Homepage(),
    );
  }
}
