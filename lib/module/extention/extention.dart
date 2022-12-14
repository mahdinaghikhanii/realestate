import 'package:flutter/material.dart';

extension ExtentionContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  void nextScreans(Widget child) {
    Navigator.push(this, MaterialPageRoute(builder: ((context) => child)));
  }

  void back() {
    Navigator.pop(this);
  }
}
