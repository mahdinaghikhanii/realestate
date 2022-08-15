import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:realestate/module/extention/extention.dart';
import 'package:realestate/module/widgets/detail_information_home.dart';
import 'package:realestate/module/widgets/input_text.dart';
import 'package:realestate/module/widgets/loading.dart';
import 'package:realestate/module/widgets/notfound.dart';
import 'package:realestate/repository/homeinformation_repository.dart';
import 'package:realestate/views/details.dart';

class AllHome extends StatelessWidget {
  const AllHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        Provider.of<HomeInformationModelRepository>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        automaticallyImplyLeading: false,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () => context.back(),
            child: Center(
              child: SvgPicture.asset(
                'assets/svg/svg_button/back_button2.svg',
                fit: BoxFit.contain,
                width: 36,
                height: 36,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset(
              'assets/svg/settings.svg',
              fit: BoxFit.contain,
              width: 24,
              height: 24,
            ),
          )
        ],
        title: Text("Discover", style: context.textTheme.subtitle1),
      ),
      body: FutureBuilder(
        future:
            Provider.of<HomeInformationModelRepository>(context, listen: false)
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
                const SizedBox(height: 22),
                const MInputText(),
                const SizedBox(height: 24),
                Text("50 results", style: context.textTheme.subtitle1),
                const SizedBox(height: 24),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: data.items.length,
                        itemBuilder: (context, index) {
                          return DetailInformationHome(
                              model: data.items[index],
                              showFavoriteIcon: false,
                              ontap: () => context.nextScreans(Details(
                                  homeInformationModel: data.items[index])));
                        })),
              ],
            ),
          );
        },
      ),
    );
  }
}
