import 'package:flutter/material.dart';
import 'package:grievanceportal/utils/image.dart';
import 'package:grievanceportal/config/theamdata.dart';
import 'package:grievanceportal/view/profile/profile.dart';

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
          shrinkWrap: true,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
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
                // Add logout functionality here
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
