import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:realestate/module/widgets/custom_icon.dart';
import 'package:realestate/views/chat.dart';
import 'package:realestate/views/favorite.dart';
import 'package:realestate/views/home.dart';
import 'package:realestate/views/user_profile.dart';

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
    return screan[_selectedIndex](
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.shade300),
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
                  imgAddres: 'assets/svg/bottom_navigation_icon/home.svg',
                  isSelected: _selectedIndex == 0,
                ),
                CustomIcon(
                  ontap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  imgAddres: 'assets/svg/bottom_navigation_icon/favorite.svg',
                  isSelected: _selectedIndex == 1,
                ),
                CustomIcon(
                  ontap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  imgAddres: 'assets/svg/bottom_navigation_icon/chat.svg',
                  isSelected: _selectedIndex == 2,
                ),
                CustomIcon(
                  ontap: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  imgAddres: 'assets/svg/bottom_navigation_icon/user.svg',
                  isSelected: _selectedIndex == 3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
