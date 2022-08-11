import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realestate/module/extention/extention.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SvgPicture.asset(
                'assets/svg/settings.svg',
                fit: BoxFit.contain,
                width: 24,
                height: 24,
              ),
            )
          ],
          titleSpacing: 0,
          title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Profile",
                  style: context.textTheme.subtitle1!.copyWith(fontSize: 20)))),
    );
  }
}
