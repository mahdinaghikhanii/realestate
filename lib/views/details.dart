import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/home_information.dart';
import '../module/extention/extention.dart';
import '../module/widgets/custom_mini_icon_andtext.dart';

class Details extends StatelessWidget {
  final HomeInformationModel homeInformationModel;
  const Details({Key? key, required this.homeInformationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
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
                              'assets/img/elina.jpg',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Elina mohammadi',
                            style: context.textTheme.subtitle1!
                                .copyWith(fontSize: 14),
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
                            borderRadius: BorderRadius.circular(20),
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
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                homeInformationModel.image,
                height: 310,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 310),
                  height: 450,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        homeInformationModel.title,
                        style:
                            context.textTheme.subtitle2!.copyWith(fontSize: 24),
                      ),
                      const SizedBox(height: 11),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/location.svg",
                              width: 12,
                              fit: BoxFit.contain,
                              color: const Color(0xFFB8B8B8)),
                          const SizedBox(width: 5),
                          Text(
                            "${homeInformationModel.city}, ",
                            style: const TextStyle(
                                color: Color(0xFFB8B8B8),
                                fontSize: 11,
                                fontFamily: "Poppins"),
                          ),
                          Text(homeInformationModel.country,
                              style: const TextStyle(
                                  color: Color(0xFFB8B8B8),
                                  fontSize: 11,
                                  fontFamily: "Poppins")),
                          const SizedBox(width: 20),
                          SvgPicture.asset("assets/svg/star.svg",
                              color: const Color(0xFFF2C94C)),
                          const SizedBox(width: 5),
                          Text(
                            homeInformationModel.rate.toString(),
                            style: const TextStyle(color: Color(0xFFF2C94C)),
                          ),
                          const SizedBox(width: 10),
                          Text(homeInformationModel.category,
                              style: const TextStyle(
                                color: Color(0xFF00CC96),
                                fontSize: 14,
                              ))
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text("\$${homeInformationModel.price}",
                              style: const TextStyle(
                                  fontSize: 24,
                                  color: Color(
                                    0xFF00CC96,
                                  ),
                                  fontWeight: FontWeight.bold)),
                          Text(homeInformationModel.rentalTime,
                              style: const TextStyle(
                                  fontSize: 14,
                                  overflow: TextOverflow.clip,
                                  color: Color(0xFFB8B8B8),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Divider(color: Color(0xFFF4F4F4), thickness: 2),
                      const SizedBox(height: 12),
                      IntrinsicHeight(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomMiniIconAndText(
                                  title: homeInformationModel.sizeHome,
                                  svgAddres: 'assets/svg/size.svg'),
                              const SizedBox(width: 6),
                              const VerticalDivider(
                                color: Color(0xFFF4F4F4),
                                thickness: 2,
                                indent: 2,
                                endIndent: 10,
                              ),
                              CustomMiniIconAndText(
                                  title:
                                      "${homeInformationModel.bedRoom} Badroom",
                                  svgAddres: 'assets/svg/bedroom.svg'),
                              const SizedBox(width: 6),
                              const VerticalDivider(
                                color: Color(0xFFF4F4F4),
                                thickness: 2,
                                indent: 2,
                                endIndent: 10,
                              ),
                              CustomMiniIconAndText(
                                  title:
                                      "${homeInformationModel.bathRoom} Bathroom",
                                  svgAddres: 'assets/svg/bathroom.svg'),
                              const SizedBox(width: 6),
                              const VerticalDivider(
                                color: Color(0xFFF4F4F4),
                                thickness: 2,
                                indent: 2,
                                endIndent: 10,
                              ),
                              CustomMiniIconAndText(
                                  title: homeInformationModel.parking
                                      ? "Parking"
                                      : "",
                                  svgAddres: 'assets/svg/parking.svg'),
                            ]),
                      ),
                      const SizedBox(height: 12),
                      const Divider(color: Color(0xFFF4F4F4), thickness: 2),
                      const SizedBox(height: 32),
                      Text("Description", style: context.textTheme.subtitle1),
                      const SizedBox(height: 16),
                      Expanded(
                          child: Text(
                        homeInformationModel.description,
                        style: context.textTheme.bodyText2!.copyWith(
                          color: const Color(0xFF7A7A7A),
                          height: 2.1,
                          fontSize: 13,
                        ),
                      ))
                    ],
                  ))
            ],
          ),
        ));
  }
}
