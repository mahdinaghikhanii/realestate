import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final Function() ontap;
  final String imgAddres;
  final bool isSelected;
  const CustomIcon(
      {Key? key,
      required this.ontap,
      required this.imgAddres,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        width: 24,
        height: 24,
        child: SvgPicture.asset(
          imgAddres,
          color: isSelected ? Colors.black : Colors.red,
        ),
      ),
    );
  }
}
