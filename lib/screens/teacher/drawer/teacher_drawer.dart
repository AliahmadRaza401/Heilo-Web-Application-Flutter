import 'package:flutter/material.dart';
import 'package:heilo/screens/student/Studentquiz/studentQuizMobile.dart';
import 'package:heilo/screens/student/dashBoard/dashBoardMobile.dart';
import 'package:heilo/screens/student/editProfile.dart/editProfile_Mobile.dart';
import 'package:heilo/screens/student/onDemand/on_demand_mobile.dart';
import 'package:heilo/screens/student/studentInbox/studentInboxMobile.dart';
import 'package:heilo/screens/student/student_profile/studentprofile_mobile.dart';
import 'package:heilo/screens/teacher/Main_SideMenu/teacher_sidemenu_mobile.dart';
import 'package:heilo/screens/teacher/TeacherWallet/teacher_wallet.dart';
import 'package:heilo/screens/teacher/TeacherWallet/teacher_wallet_mobile.dart';
import 'package:heilo/screens/teacher/editProfile.dart/teacher_editProfile_Mobile.dart';
import 'package:heilo/screens/teacher/teacher_Inbox/teacher_InboxMobile.dart';
import 'package:heilo/screens/teacher/teacher_profile/teacherprofile_mobile.dart';
import 'package:heilo/utils/config.dart';

int selectiveIndex = 2;

class TeacherDrawer extends StatefulWidget {
  const TeacherDrawer({Key? key}) : super(key: key);

  @override
  State<TeacherDrawer> createState() => _TeacherDrawerState();
}

class _TeacherDrawerState extends State<TeacherDrawer> {
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
            color:
                selectiveIndex == 2 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
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
                'Dashboard',
                style: TextStyle(
                  color: selectiveIndex == 2
                 ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  selectiveIndex = 2;
                });
                teacherScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TeacherSideMenuMobile()));
              },
            ),
          ),
          Container(
              color:
                selectiveIndex == 3 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading: ImageIcon(
                const AssetImage(
                  'assets/png/quiz.png',
                ),
                size: 100,
                color: selectiveIndex == 3
                 ? AppColors.customWhite
                      : Colors.black,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: selectiveIndex == 3
                  ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                 setState(() {
                  selectiveIndex = 3;
                });
                teacherScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TeacherProfileMobile()));
              },
            ),
          ),
          Container(
              color:
                selectiveIndex == 4 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading: ImageIcon(
                const AssetImage(
                  'assets/png/dashboard.png',
                ),
                size: 100,
                color: selectiveIndex == 4
                ? AppColors.customWhite
                      : Colors.black,
              ),
              title: Text(
                'Edit Profile ',
                style: TextStyle(
                  color: selectiveIndex == 4
                 ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                 setState(() {
                  selectiveIndex = 4;
                });
                teacherScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TeacherEditProfileMobile()));
              },
            ),
          ),
          Container(
              color:
                selectiveIndex == 5 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading:  ImageIcon(
                AssetImage(
                  'assets/png/profile.png',
                ),
                size: 100,
               color: selectiveIndex == 5
             ? AppColors.customWhite
                      : Colors.black,
              ),
              title:  Text(
                'Wallet',
                style: TextStyle(
                color: selectiveIndex == 5
               ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                 setState(() {
                  selectiveIndex = 5;
                });
                teacherScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TeacherWalletMobile()));
              },
            ),
          ),
          Container(
              color:
                selectiveIndex == 6 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading:  ImageIcon(
                AssetImage(
                  'assets/png/inbox.png',
                ),
                size: 100,
                color: selectiveIndex == 6
                     ? AppColors.customWhite
                      : Colors.black,
              ),
              title:  Text(
                'Inbox',
                style: TextStyle(
                  color:  selectiveIndex == 6
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                 setState(() {
                  selectiveIndex = 6;
                });
                teacherScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TeacherInboxMobile()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
