import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: LoadingAnimationWidget.threeRotatingDots(
              size: 150, color: const Color(0xFF00CC96))),
    );
  }
}
