import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme.dart';
import 'repository/homeinformation_repository.dart';
import 'views/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: ((context) => HomeInformationModelRepository()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Realstat e',
        theme: ThemeConfig.themeData(true, context),
        home: const CustomBottmNavigationBar(),
      ),
    );
  }
}
