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
      theme: themeData,
      home: const SplashScreen(),
    );
  }
}

