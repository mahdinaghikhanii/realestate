import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MInputText extends StatelessWidget {
  const MInputText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        prefixIcon: SvgPicture.asset('assets/svg/search.svg',
            fit: BoxFit.scaleDown, width: 26, color: const Color(0xFFB8B8B8)),
        hintText: "Search...",
        hintStyle: const TextStyle(color: Color(0xFFB8B8B8), fontSize: 14),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xFFF4F4F4)),
          borderRadius: BorderRadius.circular(32),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xFFF4F4F4)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
