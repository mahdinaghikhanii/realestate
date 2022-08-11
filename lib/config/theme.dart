import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData themeData(bool isDarkTheme, context) {
    return ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        textTheme: TextTheme(
          subtitle2: TextStyle(
              color: isDarkTheme ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          subtitle1: TextStyle(
              color: isDarkTheme ? Colors.black : Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ));
  }
}
