import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../extention/extention.dart';

class ChatBottmNavigation extends StatelessWidget {
  const ChatBottmNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
        height: 80,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: BottomAppBar(
              elevation: 0,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: 48,
                      height: 48,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'assets/img/profile.jpg',
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mahdi naghikhani',
                        style:
                            context.textTheme.subtitle1!.copyWith(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Agent",
                        style: TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontSize: 12,
                            fontFamily: "Poppins"),
                      )
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 130,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFF00CC96),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/bottom_navigation_icon/chat_selected.svg',
                            color: Colors.white,
                          ),
                          Text(
                            "Messafe",
                            style: context.textTheme.bodyText2!.copyWith(
                                color: const Color(0xFFFFFFFF), fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
