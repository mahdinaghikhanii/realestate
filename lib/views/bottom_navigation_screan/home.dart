import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:realestate/views/details.dart';

import '../../module/extention/extention.dart';

import '../../module/widgets/category_iteam.dart';
import '../../module/widgets/home_details_item.dart';
import '../../module/widgets/input_text.dart';
import '../../module/widgets/loading.dart';
import '../../repository/homeinformation_repository.dart';
import '../all_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeData =
        Provider.of<HomeInformationModelRepository>(context, listen: false);
    return FutureBuilder(
      future:
          Provider.of<HomeInformationModelRepository>(context, listen: false)
              .featchData(),
      builder: (context, featchedata) {
        if (featchedata.connectionState == ConnectionState.waiting) {
          return const Loading();
        }
        if (featchedata.connectionState == ConnectionState.none) {}

        return Scaffold(
            backgroundColor: const Color(0xFFFFFFFF),
            body: SafeArea(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color(0xFFFFFFFF),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Find your best\nproperty",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Spacer(),
                          Padding(
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
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: MInputText()),
                      const SizedBox(height: 26),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: homeData.items.length,
                                itemBuilder: (context, index) {
                                  return CateGoryIteam(
                                      model: homeData.items[index]);
                                })),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                          padding: const EdgeInsets.only(left: 20, right: 26),
                          child: Row(
                            children: [
                              const Text('Popular',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              const Spacer(),
                              Material(
                                child: InkWell(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(16)),
                                    onTap: () =>
                                        context.nextScreans(const AllHome()),
                                    child: SizedBox(
                                        width: 30,
                                        height: 26,
                                        child: Center(
                                            child: SvgPicture.asset(
                                                "assets/svg/right.svg")))),
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: SizedBox(
                            width: double.infinity,
                            height: 345,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return InformationHomeDetailsIteam(
                                    model: homeData.items[index],
                                    ontap: () {
                                      context.nextScreans(Details(
                                          homeInformationModel:
                                              homeData.items[index]));
                                    },
                                  );
                                })),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                          padding: const EdgeInsets.only(left: 20, right: 26),
                          child: Row(
                            children: [
                              Text('  Recomended for you',
                                  style: context.textTheme.subtitle1),
                              const Spacer(),
                              Material(
                                child: InkWell(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(16)),
                                    onTap: () =>
                                        context.nextScreans(const AllHome()),
                                    child: SizedBox(
                                        width: 30,
                                        height: 26,
                                        child: Center(
                                            child: SvgPicture.asset(
                                                "assets/svg/right.svg")))),
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: SizedBox(
                            width: double.infinity,
                            height: 345,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return InformationHomeDetailsIteam(
                                    model: homeData.items[index],
                                    ontap: () {
                                      context.nextScreans(Details(
                                          homeInformationModel:
                                              homeData.items[index]));
                                    },
                                  );
                                })),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
