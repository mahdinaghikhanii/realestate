import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../extention/extention.dart';

class BuildListTile extends StatelessWidget {
  const BuildListTile(
      {Key? key,
      required this.visibilityArrowIcons,
      required this.ontap,
      required this.color,
      required this.icon,
      required this.title,
      required this.trailing})
      : super(key: key);
  final String title, trailing;
  final String icon;
  final Color color;
  final bool visibilityArrowIcons;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.all(Radius.circular(32));
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          contentPadding: const EdgeInsets.all(0),
          leading: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: color.withAlpha(30)),
            child: Center(
              child: SvgPicture.asset(
                icon,
                color: color,
              ),
            ),
          ),
          title: Text(title, style: context.textTheme.bodyText2),
          trailing: SizedBox(
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(trailing,
                    style: context.textTheme.headline6
                        ?.copyWith(color: Colors.grey.shade600, fontSize: 15)),
                Visibility(
                  visible: visibilityArrowIcons,
                  child: SvgPicture.asset(
                    "assets/svg/right.svg",
                    width: 10,
                    height: 10,
                    color: const Color(0xFFB8B8B8),
                  ),
                ),
              ],
            ),
          ),
          onTap: ontap),
    );
  }
}
