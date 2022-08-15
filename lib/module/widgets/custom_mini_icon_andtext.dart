import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../extention/extention.dart';

class CustomMiniIconAndText extends StatelessWidget {
  final String title;
  final String svgAddres;
  const CustomMiniIconAndText(
      {Key? key, required this.title, required this.svgAddres})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(svgAddres),
        Text(title,
            style: context.textTheme.bodyText2!.copyWith(
              color: const Color(0xFF7A7A7A),
              fontSize: 11,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
