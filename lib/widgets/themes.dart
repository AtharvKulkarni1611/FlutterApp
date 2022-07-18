import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        accentColor: DarkBlue,
        buttonColor: MyTheme.LightBlue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        accentColor: Colors.white,
        canvasColor: MyTheme.DarkCream,
        buttonColor: MyTheme.LightBlue,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white)),
      );

  static Color creamcolor = Color(0xfff5f5f5);
  static Color DarkCream = Vx.gray900;
  static Color DarkBlue = Color(0xff403b58);
  static Color LightBlue = Vx.indigo500;
}
