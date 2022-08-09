import 'package:flutter/material.dart';

extension ExtentionContext on BuildContext {
  void nextScreans(Widget child) {
    Navigator.push(this, MaterialPageRoute(builder: ((context) => child)));
  }

  void back() {
    Navigator.pop(this);
  }
}
