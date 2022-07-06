import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/pages/home_page.dart';
import 'package:test_app/pages/login_page.dart';

void main() {
  runApp(MyApp()); //This is a method
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for ui
    //90% things in flutter are widgets
    //Return type of build is widget

    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => Loginpage(),
          "/home": (context) => Homepage(),
          "/login": (context) => Loginpage()
        });
  }
}
