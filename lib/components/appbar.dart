import 'package:flutter/material.dart';
import 'package:grievanceportal/utils/helper_text.dart';
import 'package:grievanceportal/utils/image.dart';
import 'package:grievanceportal/config/theamdata.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(ImagePath.logo,height: AppSizes.largeIconSize*2,),
      title: Text(CommonText.santusht,style: TextStyle(fontSize: AppSizes.largeTextSize),),
      subtitle: const Text("All India Institute Of Medical Sciences\nNew Delhi",style: TextStyle(fontSize: AppSizes.smallTextSize),),
    );
  }
}
