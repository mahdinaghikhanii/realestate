import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/home_information.dart';
import '../extention/extention.dart';

class DetailInformationHome extends StatelessWidget {
  final bool showFavoriteIcon;
  final VoidCallback ontap;
  final HomeInformationModel model;
  const DetailInformationHome(
      {Key? key,
      required this.model,
      required this.showFavoriteIcon,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          width: double.infinity,
          height: 106,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: const Color(0xFFF4F4F4)),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: Image.asset(
                    model.image,
                    fit: BoxFit.cover,
                    height: 110,
                    width: 110,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12),
                      Flexible(
                        child: SizedBox(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                model.title,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: context.textTheme.subtitle1,
                              ),
                              Visibility(
                                visible: showFavoriteIcon,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: SvgPicture.asset(
                                      "assets/svg/favorite_red.svg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset("assets/svg/location.svg",
                                width: 12,
                                fit: BoxFit.contain,
                                color: const Color(0xFFB8B8B8)),
                            const SizedBox(width: 5),
                            const Text(
                              'Balikpapan, Indonesia',
                              style: TextStyle(
                                  color: Color(0xFFB8B8B8),
                                  fontSize: 11,
                                  fontFamily: "Poppins"),
                            )
                          ]),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Text('\$${model.price}',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(
                                    0xFF00CC96,
                                  ),
                                  fontWeight: FontWeight.bold)),
                          const Text("/years",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Poppins",
                                color: Color(0xFFB8B8B8),
                              )),
                          const SizedBox(width: 6),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/star.svg",
                                  color: const Color(0xFFF2C94C)),
                              const SizedBox(width: 5),
                              Text(
                                model.rate.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Color(0xFFF2C94C), fontSize: 10),
                              ),
                              const SizedBox(width: 10),
                              Text(model.category,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    overflow: TextOverflow.clip,
                                    color: Color(0xFF00CC96),
                                    fontFamily: "Poppins",
                                    fontSize: 10,
                                  ))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
