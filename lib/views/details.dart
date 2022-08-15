import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/home_information.dart';
import '../module/extention/extention.dart';
import '../module/widgets/body_details.dart';
import '../module/widgets/chat_btm.dart';

class Details extends StatelessWidget {
  final HomeInformationModel homeInformationModel;
  const Details({Key? key, required this.homeInformationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const ChatBottmNavigation(),
        body: SingleChildScrollView(
          child: Stack(
            children: [BodyDetails(homeInformationModel: homeInformationModel)],
          ),
        ));
  }
}
