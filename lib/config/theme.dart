import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData themeData(bool isDarkTheme, context) {
    return ThemeData(
        textTheme: TextTheme(
      subtitle1: TextStyle(
          color: isDarkTheme ? Colors.black : Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 16),
    ));
  }
}
