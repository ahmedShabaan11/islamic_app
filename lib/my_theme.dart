import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
  );
  static final ThemeData darkTheme = ThemeData();
}
