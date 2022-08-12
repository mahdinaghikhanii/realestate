import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realestate/module/extention/extention.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/svg/bottom_navigation_icon/moreiteam.svg',
                  fit: BoxFit.contain,
                  width: 26,
                  height: 26,
                ),
              ),
            )
          ],
          titleSpacing: 0,
          title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Profile", style: context.textTheme.subtitle2))),
      body: Column(
        children: [
          const SizedBox(height: 27),
          const Center(
            child: SizedBox(
              width: 88,
              height: 88,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/img/profile.jpg',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text("Mahdin aghikhani", style: context.textTheme.subtitle2),
          const SizedBox(height: 6),
          Row(
            children: [
              SvgPicture.asset("assets/svg/location.svg", width: 16, height: 16)
            ],
          )
        ],
      ),
    );
  }
}
