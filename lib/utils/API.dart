// Author: Sumit Kumar Roy
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:grievanceportal/config/route.dart' ;

class API {
  Route route;


  API({required this.route});

  // Method for user login
  Future<bool> login(String mobileNo, String password) async {
    try {
      var headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
        '': ''
      };


      var dio = Dio();

      // Making a POST request to the login endpoint
      var response = await dio.request(
        'https://cfapplication.aiims.edu/santusht/loginProcess?j_username=8750030780&j_password=e10adc3949ba59abbe56e057f20f883e&loginBy=password',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );

      // Checking if the response is successful
      if (response.statusCode == 200) {
        // Printing response data if in debug mode
        if (kDebugMode) {
          print("data ${response.runtimeType}");
        }
        // Printing encoded response data
        print(json.encode(response.data));
      } else {
        // Printing error message if response status code is not 200
        print(response.statusMessage);
      }
      return true; // Returning true indicating successful login
    } catch (e) {
      return false; // Returning false if an error occurs during login
    }
  }
}
