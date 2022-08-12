import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:realestate/module/extention/extention.dart';
import 'package:realestate/module/widgets/detail_information_home.dart';
import 'package:realestate/module/widgets/input_text.dart';
import 'package:realestate/module/widgets/loading.dart';
import 'package:realestate/module/widgets/notfound.dart';
import 'package:realestate/repository/homeinformation_repository.dart';

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
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: InkWell(
            onTap: () => context.back(),
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100, shape: BoxShape.circle),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/back.svg',
                  fit: BoxFit.contain,
                  width: 8,
                  height: 14,
                ),
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
                          );
                        })),
              ],
            ),
          );
        },
      ),
    );
  }
}
