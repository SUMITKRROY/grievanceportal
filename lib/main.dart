import 'package:flutter/material.dart';
import 'package:grievanceportal/config/theamdata.dart';
import 'package:grievanceportal/view/grievance.dart';
import 'package:grievanceportal/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grievance portal',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: ColorsData.primaryColor,
          textTheme: ButtonTextTheme.primary,
          // You can define more button properties here as needed
        ),
        // Use your custom theme data here
        primaryColor: ColorsData.primaryColor,
        secondaryHeaderColor: ColorsData.secondaryColor,

      ),
      home: SplashScreen(),
    );
  }
}

