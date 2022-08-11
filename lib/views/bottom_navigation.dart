import 'dart:ui';

import 'package:flutter/material.dart';

import '../module/widgets/custom_icon.dart';
import 'bottom_navigation_screan/chat.dart';
import 'bottom_navigation_screan/favorite.dart';
import 'bottom_navigation_screan/home.dart';
import 'bottom_navigation_screan/user_profile.dart';

class CustomBottmNavigationBar extends StatefulWidget {
  const CustomBottmNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottmNavigationBar> createState() =>
      _CustomBottmNavigationBarState();
}

class _CustomBottmNavigationBarState extends State<CustomBottmNavigationBar> {
  int _selectedIndex = 0;

  final List screan = const [Home(), Favorite(), Chat(), UserProfile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            decoration:
                BoxDecoration(color: Color(0xFFFCFCFD).withOpacity(0.1)),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                child: BottomAppBar(
                  elevation: 0,
                  color: Colors.transparent,
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomIcon(
                          ontap: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          imgAddres:
                              'assets/svg/bottom_navigation_icon/home.svg',
                          isSelected: _selectedIndex == 0,
                          imgSelected:
                              'assets/svg/bottom_navigation_icon/home_selected.svg',
                        ),
                        CustomIcon(
                          imgSelected:
                              "assets/svg/bottom_navigation_icon/favorite_selected.svg",
                          ontap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          imgAddres:
                              'assets/svg/bottom_navigation_icon/favorite.svg',
                          isSelected: _selectedIndex == 1,
                        ),
                        CustomIcon(
                          ontap: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          },
                          imgAddres:
                              'assets/svg/bottom_navigation_icon/chat.svg',
                          isSelected: _selectedIndex == 2,
                          imgSelected:
                              'assets/svg/bottom_navigation_icon/chat_selected.svg',
                        ),
                        CustomIcon(
                          ontap: () {
                            setState(() {
                              _selectedIndex = 3;
                            });
                          },
                          imgAddres:
                              'assets/svg/bottom_navigation_icon/user.svg',
                          isSelected: _selectedIndex == 3,
                          imgSelected:
                              'assets/svg/bottom_navigation_icon/user_selecte.svg',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
        body: screan[_selectedIndex]);
  }
}
