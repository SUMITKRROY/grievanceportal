import 'package:flutter/material.dart';
import 'package:grievanceportal/config/theamdata.dart';

class CustomText extends StatelessWidget {
  final String lable;
    CustomText({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: TextStyle(fontSize: AppSizes.mediumTextSize),
    );
  }
}
