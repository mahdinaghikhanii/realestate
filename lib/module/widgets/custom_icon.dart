import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final Function() ontap;
  final String imgAddres;
  final String imgSelected;
  final bool isSelected;
  const CustomIcon(
      {Key? key,
      required this.ontap,
      required this.imgAddres,
      required this.imgSelected,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        width: isSelected ? 32 : 24,
        height: isSelected ? 32 : 24,
        child: SvgPicture.asset(
          isSelected ? imgSelected : imgAddres,
          color: isSelected ? const Color(0xFF00CC96) : const Color(0xFFB8B8B8),
        ),
      ),
    );
  }
}
