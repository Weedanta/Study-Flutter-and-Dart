import 'package:flutter/material.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: MaterialColor(0xFF003266, <int, Color>{
        50: Color(0xFF001A33),
        100: Color(0xFF002B54),
        200: Color(0xFF003266),
        300: Color(0xFF004080),
        400: Color(0xFF004D99),
        500: Color(0xFF0059B3),
        600: Color(0xFF0066CC),
        700: Color(0xFF0073E6),
        800: Color(0xFF0080FF),
        900: Color(0xFF1A8CFF),
      }));
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
