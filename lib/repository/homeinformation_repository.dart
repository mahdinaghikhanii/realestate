import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:realestate/model/home_information.dart';

class HomeInformationModelRepository {
  List<HomeInformationModel> _listIteams = [];
  Future featchData() async {
    return await Future.delayed(const Duration(seconds: 1)).then((value) async {
      var respone = await rootBundle.loadString('lib/data/home_data.json');
      List data = jsonDecode(respone);
      List<HomeInformationModel> loadedInformationHome = [];
      for (var i = 0; i < data.length; i++) {
        var result = HomeInformationModel.fromJson(data[i]);
        loadedInformationHome.add(result);
      }
      if (_listIteams.isNotEmpty) {
        return _listIteams = loadedInformationHome;
      }
      return Exception(" we have problems here");
    });
  }
}
