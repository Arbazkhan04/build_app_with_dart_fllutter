
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:network_app/utilis/constant.dart';

class Network{
  static Future<Map<String , dynamic>> getPrayerJson() async {
    var response = await http.get(Uri.parse(Constants.PRAYER_MONTH)); // thsi is give you the response but some time our response contain some 
    //regular string as well so we have to convert them into json code 
    Map<String , dynamic> server = jsonDecode(response.body);
    return server;
  }
}