import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:grievanceportal/config/route.dart' ;

class API {
  Route route;

  API({required this.route});

  Future<bool> login(String mobileNo, String password) async {

  try{
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      '': '',
      'Cookie': 'JSESSIONID=EE412AABC98D89179CF40452B4BF0014'
    };
    var dio = Dio();
    var response = await dio.request(
      'https://cfapplication.aiims.edu/santusht/loginProcess?j_username=8750030780&j_password=e10adc3949ba59abbe56e057f20f883e&loginBy=password',
      options: Options(
        method: 'POST',
        headers: headers,
      ),
    );
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print("data ${response.runtimeType}");
      }
      print(json.encode(response.data));
    }
    else {
      print(response.statusMessage);
    }
    return true;
  }catch(e){
    return false;
  }
  }
}
