import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grievanceportal/utils/helper_text.dart';
import 'package:grievanceportal/utils/image.dart';
import 'package:grievanceportal/config/theamdata.dart';
import 'package:grievanceportal/utils/utils.dart';
import 'package:grievanceportal/view/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigater();
  }

  Future<void> _navigater() async {
    await Future.delayed(Duration(seconds: 3));
    // User is logged in, navigate to NewsRoom
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils.getScreenSize(context);
    double screenHeight = Utils.getScreenHeight(context);
    double screenWidth = Utils.getScreenWidth(context);

    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset(ImagePath.logo,height: Utils.getScreenHeight(context)/3,),
       Utils.getSizedBoxHeight(8.0),
           Align(
             alignment: Alignment.center,
             child: Text("AIIMS Delhi",style: TextStyle(fontSize: AppSizes.mediumTextSize*2),),
           ),
           Utils.getSizedBoxHeight(24.0),
           Align(
             alignment: Alignment.bottomCenter,
             child: Text("${CommonText.santusht}",style: TextStyle(fontSize: AppSizes.largeTextSize*2),),
           ),
         ],
       ),
     ),
    );
  }
}
