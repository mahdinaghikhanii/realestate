import 'package:flutter/material.dart';
import 'package:realestate/module/widgets/custom_icon.dart';

class CustomBottmNavigationBar extends StatelessWidget {
  const CustomBottmNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: Row(
        children: [CustomIcon(ontap: (int index) {})],
      ),
    );
  }
}
