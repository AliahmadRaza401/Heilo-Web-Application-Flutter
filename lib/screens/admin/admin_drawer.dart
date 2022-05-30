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
import 'package:heilo/utils/config.dart';
  int selectiveIndex = 2;
class AdminDrawer extends StatefulWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  State<AdminDrawer> createState() => _AdminDrawerState();
}

class _AdminDrawerState extends State<AdminDrawer> {

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
                AssetImage(
                  'assets/png/student_dashboard.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 2 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Home ',
                style: TextStyle(
                  color: selectiveIndex == 2
                      ? AppColors.customWhite
                      : Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  selectiveIndex = 2;
                  print(selectiveIndex);
                });
                adminScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AdminDashboardMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 3 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading: ImageIcon(
                AssetImage(
                  'assets/png/student_quiz.png',
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
                adminScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => QuizReportMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 4 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading: ImageIcon(
                AssetImage(
                  'assets/png/admin_paymentrequest.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 4 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Teacher ',
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
                adminScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PaymentPageMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 5 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading: ImageIcon(
                AssetImage(
                  'assets/png/admin_student.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 5 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Student',
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
                adminScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfileMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 6 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading: ImageIcon(
                AssetImage(
                  'assets/png/admin_financial.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 6 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Financials',
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
                adminScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfitMobile()));
              },
            ),
          ),
          Container(
            color:
                selectiveIndex == 7 ? AppColors.greenDark : Colors.transparent,
            child: ListTile(
              leading: ImageIcon(
                AssetImage(
                  'assets/png/admin_contact.png',
                ),
                size: 100,
                color:
                    selectiveIndex == 7 ? AppColors.customWhite : Colors.black,
              ),
              title: Text(
                'Contact',
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
                adminScafoldKey.currentState!.openEndDrawer();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AdminContactMobile()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
