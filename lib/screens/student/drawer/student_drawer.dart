import 'package:flutter/material.dart';
import 'package:heilo/screens/student/Studentquiz/studentQuizMobile.dart';
import 'package:heilo/screens/student/dashBoard/dashBoardMobile.dart';
import 'package:heilo/screens/student/editProfile.dart/editProfile_Mobile.dart';
import 'package:heilo/screens/student/onDemand/on_demand_mobile.dart';
import 'package:heilo/screens/student/studentInbox/studentInboxMobile.dart';
import 'package:heilo/screens/student/student_profile/studentprofile_mobile.dart';
import 'package:heilo/utils/config.dart';

import '../Main_SideMenu/student_sidemenu_mobile.dart';

int selectiveIndex = 2;

class StudentDrawer extends StatefulWidget {
  const StudentDrawer({Key? key}) : super(key: key);

  @override
  State<StudentDrawer> createState() => _StudentDrawerState();
}

class _StudentDrawerState extends State<StudentDrawer> {
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
          Container(
            color: selectiveIndex == 2
                ? AppColors.greenDark
                : Colors.transparent,
            child: ListTile(
              // selectedTileColor: Colors.orange,
              // selectedColor:
              //     selectiveIndex == 1 ? Colors.grey : Colors.transparent,
              leading: ImageIcon(
                const AssetImage(
                  'assets/png/ondemand.png',
                ),
                size: 100,
                color: selectiveIndex == 2
                    ? AppColors.customWhite
                    : Colors.black,
              ),
              title: Text(
                'On Demand ',
                style: TextStyle(
                  color: selectiveIndex == 2
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                //             if (studentScafoldKey.currentState.isDrawerOpen) {
                // studentScafoldKey.currentState.openEndDrawer();
                // }
                setState(() {
                  selectiveIndex = 2;
                  print(selectiveIndex);
                });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StudentSideMenuMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 3 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              // selectedColor:
              // selectiveIndex == 2 ? Colors.grey : Colors.transparent,
              leading: ImageIcon(
                const AssetImage(
                  'assets/png/quiz.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 3 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Quiz',
                style: TextStyle(
                  color: selectiveIndex == 3
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  selectiveIndex = 3;
                  print(selectiveIndex);
                });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StudentQuizMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 4 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              // selectedColor:
              //     selectiveIndex == 3 ? Colors.grey : Colors.transparent,
              leading: ImageIcon(
                const AssetImage(
                  'assets/png/dashboard.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 4 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Dashboard ',
                style: TextStyle(
                  color: selectiveIndex == 4
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  selectiveIndex = 4;
                  print(selectiveIndex);
                });
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DashBoardMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 5 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              // selectedColor:
              //     selectiveIndex == 4 ? Colors.grey : Colors.transparent,
              leading: ImageIcon(
                const AssetImage(
                  'assets/png/profile.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 5 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: selectiveIndex == 5
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  selectiveIndex = 5;
                  print(selectiveIndex);
                });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StudentProfileMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 6 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              // selectedColor:
              //     selectiveIndex == 5 ? Colors.grey : Colors.transparent,
              leading: ImageIcon(
                const AssetImage(
                  'assets/png/editProfile.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 6 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Edit Profile',
                style: TextStyle(
                  color: selectiveIndex == 6
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  selectiveIndex = 6;
                  print(selectiveIndex);
                });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfileMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 7 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              // selectedColor:
              //     selectiveIndex == 7 ? Colors.grey : Colors.transparent,
              leading: ImageIcon(
                AssetImage(
                  'assets/png/inbox.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 7 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Inbox',
                style: TextStyle(
                  color: selectiveIndex == 7
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  selectiveIndex = 7;
                  print(selectiveIndex);
                });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StudentInboxMobile()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
