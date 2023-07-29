import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get themeData => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)));

  static ThemeData get darktheme =>  ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.red,
    fontFamily: GoogleFonts.lato().fontFamily,
  );
}


