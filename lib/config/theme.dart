import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData themeData(bool isDarkTheme, context) {
    return ThemeData(
        splashColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF00CC96)),
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFFFFF),
        ),
        textTheme: TextTheme(
          bodyText2:
              const TextStyle(color: Color(0xFF271B27), fontFamily: "Poppins"),
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
