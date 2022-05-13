// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/sideMenu/admin_sideMenu.dart';
import 'package:heilo/screens/teacher/Main_SideMenu/teacher_sidemenu.dart';
import 'package:heilo/screens/teacher/TeacherWallet/teacher_wallet.dart';
import 'package:heilo/screens/teacher/editProfile.dart/teacher_editProfile.dart';
import 'package:heilo/screens/teacher/teacher_profile/teacher_profile.dart';

import 'screens/authentication/Intro/intro.dart';
import 'screens/student/Main_SideMenu/student_sidemenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 982),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
          ),
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          // home: Intro(),
          // home: const AdminSideMenu(),
          // home: AdminSideMenu(),

          home: const StudentSideMenu(),
          // home: const TeacherSideMenu(),
        );
      },
    );
  }
}
