import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../module/extention/extention.dart';
import '../../module/widgets/detail_information_home.dart';
import '../../module/widgets/loading.dart';
import '../../module/widgets/notfound.dart';
import '../../repository/homeinformation_repository.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeData = Provider.of<HomeInformationModelRepository>(context);
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: const Color(0xFFFFFFFF),
            automaticallyImplyLeading: false,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/svg/bottom_navigation_icon/moreiteam.svg',
                    fit: BoxFit.contain,
                    width: 26,
                    height: 26,
                  ),
                ),
              )
            ],
            titleSpacing: 0,
            title: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Favorite", style: context.textTheme.subtitle2))),
        body: FutureBuilder(
          future: Provider.of<HomeInformationModelRepository>(context,
                  listen: false)
              .featchData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> featchedata) {
            if (featchedata.connectionState == ConnectionState.waiting) {
              return const Loading();
            }
            if (featchedata.connectionState == ConnectionState.none) {
              return const NotFound();
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: homeData.items.length,
                          itemBuilder: (context, index) {
                            return DetailInformationHome(
                              model: homeData.items[index],
                              showFavoriteIcon: true,
                            );
                          })),
                ],
              ),
            );
          },
        ));
  }
}
