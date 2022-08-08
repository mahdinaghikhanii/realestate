import 'package:flutter/material.dart';

class MInputText extends StatelessWidget {
  const MInputText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        prefixIcon:
            const Icon(Icons.search, color: Color(0xFFB8B8B8), size: 24),
        hintText: "Search...",
        hintStyle: const TextStyle(color: Color(0xFFB8B8B8), fontSize: 14),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFFF4F4F4)),
          borderRadius: BorderRadius.circular(32),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFFF4F4F4)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
