import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Color.fromARGB(255, 255, 16, 16);
  static const Color primary2 = Colors.orange;
  static final ThemeData lighTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 224, 13, 13),
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 255, 20, 20)
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary
      )
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 1
      )
    )    
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: primary2,
      iconTheme: IconThemeData(
        color: primary2
      )
    )
  );
}