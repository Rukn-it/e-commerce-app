import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData light_mood = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: scaffoldColor,

  iconTheme: const IconThemeData(color: primaryColor),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black),
    titleMedium: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.black),
    titleSmall: TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.black54),
  ),


  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, 
    backgroundColor: primaryColor, 
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    textStyle: const TextStyle(
      fontFamily: "Inter",
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ),
    minimumSize: const Size(double.infinity, 50),
  )),


  appBarTheme: const AppBarTheme(
      elevation: 0, toolbarHeight: 80, backgroundColor: scaffoldColor),


  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: scaffoldColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: secondColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),

 
);
      

  
// );