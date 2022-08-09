import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realestate/module/extention/extention.dart';

class AllHome extends StatelessWidget {
  const AllHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => context.back(),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100, shape: BoxShape.circle),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/svg/back.svg',
                    fit: BoxFit.contain,
                    width: 8,
                    height: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SvgPicture.asset(
              'assets/svg/settings.svg',
              fit: BoxFit.contain,
              width: 24,
              height: 24,
            ),
          )
        ],
        title: const Text(
          "Discover",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
