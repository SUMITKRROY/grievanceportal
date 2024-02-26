import 'package:flutter/material.dart';
import 'package:grievanceportal/utils/image.dart';
import 'package:grievanceportal/config/theamdata.dart';

import '../components/appbar.dart';
import '../components/button.dart';
import '../components/custom_TextFeild.dart';

class Grievancescreen extends StatefulWidget {
  const Grievancescreen({super.key});

  @override
  State<Grievancescreen> createState() => _GrievancescreenState();
}

class _GrievancescreenState extends State<Grievancescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: CustomAppBar(),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorsData.primaryColor,
              ),
              child: Column(
                children: [
                  CircleAvatar(
              radius: 45,
                    backgroundImage: AssetImage(ImagePath.profile,),
                  ),
                  SizedBox(height: 08), // Add some space between avatar and text
                  Text(
                    'Sumit Roy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

                ],
              ),
            ),
           // Divider(),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Add your onTap functionality here
              },
            ),
            ListTile(
              title: Text('NotiFICATION'),
              onTap: () {
                // Add your onTap functionality here
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                // Add your onTap functionality here
              },
            ),
          ],
        ),
      ),

      body: Container(),
    );
  }
}
