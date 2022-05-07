import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/AdminContact/admin_contact_mobile.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_mobile.dart';
import 'package:heilo/screens/admin/Payment/payment_mobile.dart';
import 'package:heilo/screens/admin/Profile/admin_profile.dart';
import 'package:heilo/screens/admin/Profile/profile_mobile.dart';
import 'package:heilo/screens/admin/Profit/profit_mobile.dart';
import 'package:heilo/screens/admin/QuizReport/quiz_report_mobile.dart';
import 'package:heilo/screens/student/Studentquiz/studentQuizMobile.dart';
import 'package:heilo/screens/student/dashBoard/dashBoardMobile.dart';
import 'package:heilo/screens/student/editProfile.dart/editProfile_Mobile.dart';
import 'package:heilo/screens/student/onDemand/onDemand_web.dart';
import 'package:heilo/screens/student/studentInbox/studentInboxMobile.dart';
import 'package:heilo/screens/student/student_profile/studentprofile_mobile.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

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
              'Home ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              //             if (studentScafoldKey.currentState.isDrawerOpen) {
              // studentScafoldKey.currentState.openEndDrawer();
// }
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AdminDashboardMobile()));
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
                  MaterialPageRoute(builder: (context) => QuizReportMobile()));
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
              'Teacher ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PaymentPageMobile()));
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
              'Student',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfileMobile()));
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
              'Financials',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfitMobile()));
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
              'Contact',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AdminContactMobile()));
            },
          ),
        ],
      ),
    );
  }
}
