import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realestate/model/home_information.dart';

class InformationHomeDetailsIteam extends StatelessWidget {
  final HomeInformationModel model;
  const InformationHomeDetailsIteam({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFF4F4F4), width: 1)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
                  child: Image.asset(
                    model.image,
                    width: 240,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svg/star.svg",
                          color: const Color(0xFFF2C94C)),
                      const SizedBox(width: 5),
                      Text(
                        model.rate.toString(),
                        style: const TextStyle(color: Color(0xFFF2C94C)),
                      ),
                      const SizedBox(width: 10),
                      Text(model.category,
                          style: const TextStyle(
                            color: Color(0xFF00CC96),
                            fontSize: 14,
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Plaza Avenue Building",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(children: [
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
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(model.price.toString(),
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color(
                                0xFF00CC96,
                              ),
                              fontWeight: FontWeight.bold)),
                      const Text("/years",
                          style: TextStyle(
                              fontSize: 14,
                              overflow: TextOverflow.clip,
                              color: Color(0xFFB8B8B8),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ]),
        ));
  }
}
