import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xFFB7935F);
  static Color blackColor = const Color(0xFF242424);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    textTheme: TextTheme(
        headlineSmall: TextStyle(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.w700),
        headlineMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),

    appBarTheme:
        AppBarTheme(color: Colors.transparent, elevation: 0, centerTitle: true),
    //iconTheme:ImageIcon(color:,)
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black, unselectedItemColor: Colors.white),
  );
  static final ThemeData darkTheme = ThemeData();
}
