import 'package:flutter/material.dart';
import 'package:realestate/module/widgets/appbar_detail.dart';

import '../model/home_information.dart';

import '../module/widgets/body_details.dart';
import '../module/widgets/chat_btm.dart';

class Details extends StatefulWidget {
  final HomeInformationModel homeInformationModel;
  const Details({Key? key, required this.homeInformationModel})
      : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

late AnimationController animationController;
late Animation animation;

class _DetailsState extends State<Details> with TickerProviderStateMixin {
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    animation = ColorTween(begin: Colors.transparent, end: Colors.transparent)
        .animate(animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const ChatBottmNavigation(),
        body: NotificationListener<ScrollNotification>(
          onNotification: scrollNotification,
          child: Stack(
            children: [
              BodyDetails(homeInformationModel: widget.homeInformationModel),
              AppbarDetail(
                  animation: animation,
                  animationController: animationController)
            ],
          ),
        ));
  }

  bool scrollNotification(ScrollNotification notification) {
    bool scroll = false;
    if (notification.metrics.axis == Axis.vertical) {
      animationController.animateTo(notification.metrics.pixels / 10);
      scroll = true;
    }
    return scroll;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
