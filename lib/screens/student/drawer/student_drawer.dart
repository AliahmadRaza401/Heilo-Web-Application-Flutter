import 'package:flutter/material.dart';
import 'package:heilo/screens/student/Studentquiz/studentQuizMobile.dart';
import 'package:heilo/screens/student/dashBoard/dashBoardMobile.dart';
import 'package:heilo/screens/student/editProfile.dart/editProfile_Mobile.dart';
import 'package:heilo/screens/student/onDemand/on_demand_mobile.dart';
import 'package:heilo/screens/student/studentInbox/studentInboxMobile.dart';
import 'package:heilo/screens/student/student_profile/studentprofile_mobile.dart';

import '../Main_SideMenu/student_sidemenu_mobile.dart';
class StudentDrawer extends StatelessWidget {
  const StudentDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset("assets/png/logo.png"),
          ),
          ListTile(
            leading: const ImageIcon(
              AssetImage(
                'assets/png/ondemand.png',
              ),
              size: 100,
              color: Colors.black,
            ),
            title: const Text(
              'On Demand ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
  //             if (studentScafoldKey.currentState.isDrawerOpen) {
  // studentScafoldKey.currentState.openEndDrawer();
// }
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StudentSideMenuMobile()));
                 
            },
          ),
          ListTile(
            leading: const ImageIcon(
              AssetImage(
                'assets/png/quiz.png',
              ),
              size: 100,
              color: Colors.black,
            ),
            title: const Text(
              'Quiz',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StudentQuizMobile()));
            },
          ),
          ListTile(
            leading: const ImageIcon(
              AssetImage(
                'assets/png/dashboard.png',
              ),
              size: 100,
              color: Colors.black,
            ),
            title: const Text(
              'Dashboard ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DashBoardMobile()));
            },
          ),
           ListTile(
            leading: const ImageIcon(
              AssetImage(
                'assets/png/profile.png',
              ),
              size: 100,
              color: Colors.black,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StudentProfileMobile()));
            },
          ),
           ListTile(
            leading: const ImageIcon(
              AssetImage(
                'assets/png/editProfile.png',
              ),
              size: 100,
              color: Colors.black,
            ),
            title: const Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfileMobile()));
            },
          ),
            ListTile(
            leading: const ImageIcon(
              AssetImage(
                'assets/png/inbox.png',
              ),
              size: 100,
              color: Colors.black,
            ),
            title: const Text(
              'Inbox',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StudentInboxMobile()));
            },
          ),
        ],
      ),
    );
  }
}
