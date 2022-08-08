import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CateGoryIteam extends StatelessWidget {
  const CateGoryIteam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
          height: 28,
          width: 120,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: const Color(0xFFF4F4F4)),
              borderRadius: BorderRadius.circular(32)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset('assets/svg/Subtract.svg',
                    width: 30, height: 30, color: const Color(0xFF00CC96)),
              ),
              const SizedBox(width: 8),
              const Text("Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF00CC96),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 12),
            ],
          )),
    );
  }
}
