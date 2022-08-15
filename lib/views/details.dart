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
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(300),
          child: AppBar(
            flexibleSpace: Image.asset(
              homeInformationModel.image,
              width: double.infinity,
              height: size * 4,
              fit: BoxFit.cover,
            ),
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
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                homeInformationModel.title,
                style: context.textTheme.subtitle2!.copyWith(fontSize: 24),
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
              const SizedBox(height: 29),
              const Divider(color: Color(0xFFF4F4F4)),
              Row(
                children: [
                  Column(
                    children: [
                      SvgPicture.asset('assets/svg/size.svg'),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
