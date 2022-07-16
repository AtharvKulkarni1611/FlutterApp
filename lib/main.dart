import 'package:flutter/material.dart';
import 'package:test_app/pages/cartPage.dart';
import 'package:test_app/widgets/themes.dart';
import 'package:test_app/pages/home_page.dart';
import 'package:test_app/pages/login_page.dart';
import 'package:test_app/utils/routes.dart';

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
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => Homepage(),
          MyRoutes.homeRoute: (context) => Homepage(),
          MyRoutes.loginRoute: (context) => Loginpage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}
