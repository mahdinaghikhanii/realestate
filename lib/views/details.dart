import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realestate/model/home_information.dart';
import 'package:realestate/module/extention/extention.dart';

class Details extends StatelessWidget {
  final HomeInformationModel homeInformationModel;
  const Details({Key? key, required this.homeInformationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          )
        ],
      ),
      body: SizedBox(
          child: Positioned(
        top: 60,
        child: Expanded(
            child: Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(homeInformationModel.image))),
        )),
      )),
    );
  }
}
