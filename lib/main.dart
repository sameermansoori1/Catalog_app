import 'package:catalog/pages/homepage.dart';
import 'package:catalog/pages/login.dart';
import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){



    return MaterialApp(

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch:  Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,

    ),

      routes: {
        "/" : (context)=> LoginPage(),
        MyRoutes.homeRoute : (context)=> homepage(),
        MyRoutes.loginRoute: (context)=> LoginPage()
      },
    );
  }
}