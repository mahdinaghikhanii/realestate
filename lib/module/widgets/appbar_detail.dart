import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../extention/extention.dart';

class AppbarDetail extends StatelessWidget {
  const AppbarDetail(
      {Key? key, required this.animation, required this.animationController})
      : super(key: key);

  final AnimationController animationController;
  final Animation animation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: AnimatedBuilder(
            animation: animationController,
            builder: (BuildContext context, Widget? child) {
              return AppBar(
                  backgroundColor: animation.value,
                  leadingWidth: 80,
                  elevation: 0,
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () => context.back(),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/svg/svg_button/back_button.svg',
                          fit: BoxFit.contain,
                          width: 36,
                          height: 36,
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(),
                      child: SvgPicture.asset(
                        'assets/svg/svg_button/share_button.svg',
                        fit: BoxFit.contain,
                        width: 36,
                        height: 36,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SvgPicture.asset(
                        'assets/svg/svg_button/favorite_button.svg',
                        fit: BoxFit.contain,
                        width: 36,
                        height: 36,
                      ),
                    ),
                  ]);
            }));
  }
}
