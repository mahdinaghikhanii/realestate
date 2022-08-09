import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realestate/model/home_information.dart';

class CateGoryIteam extends StatelessWidget {
  final HomeInformationModel model;
  const CateGoryIteam({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
          height: 26,
          width: model.category.length < 6 ? 115 : 140,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: const Color(0xFFF4F4F4)),
              borderRadius: BorderRadius.circular(32)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 28,
                height: 28,
                child: SvgPicture.asset(model.iconCategory.toString(),
                    fit: BoxFit.scaleDown,
                    width: 20,
                    height: 30,
                    color: const Color(0xFF00CC96)),
              ),
              const SizedBox(width: 6),
              Text(model.category,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Color(0xFF00CC96),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 12),
            ],
          )),
    );
  }
}
