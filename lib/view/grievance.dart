import 'package:flutter/material.dart';
import 'package:grievanceportal/utils/image.dart';
import 'package:grievanceportal/config/theamdata.dart';
import 'package:grievanceportal/view/profile.dart';

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
        titleSpacing: 1,
       // toolbarHeight: 80,
        title: CustomAppBar(),
      ),
      drawer: Drawer(
        child:ListView(
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
              title: Text('Profile'),
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
              },
            ),
            ListTile(
              title: Text('Grievance'),
              onTap: () {
                // Add your onTap functionality here
              },
            ),
            ListTile(
              title: Text('Notification'),
              onTap: () {
                // Add your onTap functionality here
              },
            ),
            ListTile(
              title: Text('Setting'),
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
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.primaryContainer)),
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      // Modify the bottom sheet content as needed
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              // Add logout functionality here
                            },
                            child: Text('Logout'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Logout'),
            ),
          ],
        ),

      ),

      body: Container(),
    );
  }
}
