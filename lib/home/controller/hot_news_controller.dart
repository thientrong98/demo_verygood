import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ttgt/models/hot_news_model.dart';

class HotNewController extends GetxController {
  List<HotNewsModel> hotNewsModel = <HotNewsModel>[].obs;
  Future<dynamic> getHotNew() async {
    var url = Uri.parse('https://api.notis.vn/v4/announcements/homepage');
    try {
      final response = await http.get(url);

      switch (response.statusCode) {
        case 200:
          var responseJson = json.decode(response.body.toString());
          hotNewsModel = List<HotNewsModel>.from(
              responseJson.map((model) => HotNewsModel.fromJson(model)));
          print(hotNewsModel.length);
        // case 400:
        //   throw BadRequestException(response.body.toString());
        // case 401:
        // case 403:
        //   throw UnauthorisedException(response.body.toString());
        // case 500:
        // default:
        //   throw FetchDataException(
        //       'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
      }
    } on SocketException {
      print('No net');
      // throw FetchDataException('No Internet connection');
    }
  }
}
