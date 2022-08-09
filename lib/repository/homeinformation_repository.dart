import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realestate/model/home_information.dart';

class HomeInformationModelRepository extends ChangeNotifier {
  List<HomeInformationModel> _listIteams = [];
  List get items => _listIteams;

  Future featchData() async {
    return await Future.delayed(const Duration(seconds: 2)).then((value) async {
      var respone = await rootBundle.loadString('assets/data/home_data.json');
      List data = jsonDecode(respone);
      List<HomeInformationModel> loadedInformationHome = [];
      for (var i = 0; i < data.length; i++) {
        var result = HomeInformationModel.fromJson(data[i]);
        loadedInformationHome.add(result);
      }
      if (_listIteams.isEmpty) {
        return _listIteams = loadedInformationHome;
      }
      return Exception(" we have problems here");
    });
  }
}
