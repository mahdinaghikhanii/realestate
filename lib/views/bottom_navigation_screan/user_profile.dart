import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realestate/module/extention/extention.dart';

import '../../module/widgets/buildstyle.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/svg/location.svg",
                      width: 15, height: 15, color: const Color(0xFF00CC96)),
                  const SizedBox(width: 6),
                  const Text('Iran, rasht',
                      style: TextStyle(
                          color: Color(0xFFB8B8B8),
                          fontSize: 14,
                          fontFamily: "Poppins"))
                ],
              ),
              const SizedBox(height: 60),
              BuildListTile(
                color: const Color(0xFF00CC96),
                icon: "assets/svg/users_settings.svg",
                ontap: () {},
                trailing: '',
                title: 'Personal data',
                visibilityArrowIcons: true,
              ),
              BuildListTile(
                color: const Color(0xFF00CC96),
                icon: "assets/svg/setting.svg",
                ontap: () {},
                trailing: '',
                title: 'Settings',
                visibilityArrowIcons: true,
              ),
              BuildListTile(
                color: const Color(0xFF00CC96),
                icon: "assets/svg/notification.svg",
                ontap: () {},
                trailing: '',
                title: 'Notification',
                visibilityArrowIcons: true,
              ),
              BuildListTile(
                color: const Color(0xFF00CC96),
                icon: "assets/svg/shield.svg",
                ontap: () {},
                trailing: '',
                title: 'Privacy & policy',
                visibilityArrowIcons: true,
              ),
              BuildListTile(
                color: const Color(0xFF00CC96),
                icon: "assets/svg/info.svg",
                ontap: () {},
                trailing: '',
                title: 'About us',
                visibilityArrowIcons: true,
              ),
              BuildListTile(
                color: const Color(0xFF00CC96),
                icon: "assets/svg/faq.svg",
                ontap: () {},
                trailing: '',
                title: 'FAQ',
                visibilityArrowIcons: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
