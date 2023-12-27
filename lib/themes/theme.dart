import 'package:flutter/material.dart';


var appTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,

  primaryColor: Colors.deepPurple.shade900,

  cardTheme: CardTheme(
    color: Colors.black,
    shadowColor: Colors.deepPurple.shade700,
  ),

  dialogTheme: DialogTheme(
    backgroundColor: Colors.black87,
    titleTextStyle: TextStyle(color: Colors.yellow.shade600),
    contentTextStyle: const TextStyle(color: Colors.white70),
  ),   
      
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.yellow.shade600),
    bodyLarge: const TextStyle(fontSize: 18, color: Colors.white70),
  ),

  appBarTheme: AppBarTheme(
    color: Colors.black,
    iconTheme: IconThemeData(color: Colors.yellow.shade600)
  ),
   
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.orange.shade800),
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
    ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.orange.shade800,
    unselectedItemColor: Colors.white38,
  ),
);
