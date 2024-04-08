import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Utils {
  static showLoadingProgress(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => SpinKitCubeGrid(
          color: Theme.of(context).secondaryHeaderColor,
          size: 50,
      ),
    );
  }

  static String convertToMD5(String data) {
    // Convert the input string to bytes
    List<int> bytes = utf8.encode(data);

    // Generate the MD5 hash
    Digest md5Result = md5.convert(bytes);

    // Convert the result to a hexadecimal string
    String md5String = md5Result.toString();
log("md5String : $md5String");
    return md5String;
  }

  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static Widget getSizedBoxHeight(double height) {
    return SizedBox(height: height);
  }
}
