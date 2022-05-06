// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/admin_sideMenu.dart';

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
<<<<<<< HEAD
          // home: const Intro(),
          home: const AdminSideMenu(),
          // home: AdminSideMenu(),
          //  home: const StudentSideMenu(),
=======
// <<<<<<< HEAD
//           home: const Intro(),
// =======
//           // home: const Intro(),
// <<<<<<< HEAD
//           home: const AdminSideMenu(),
// =======
// >>>>>>> ff10fa4e5ac9e33ca02d5b6db2e387465799a3d3
//           // home: const AdminSideMenu(),
// >>>>>>> 51a3dd780f8ac7613dffa3e6be2ccfe49ba6a089
          // home: AdminSideMenu(),
           home:  StudentSideMenu(),
>>>>>>> 0f1b628854be7f3ea0f72e662e03cb57f2a6454d
          // home:const TeacherSideMenu(),
        );
      },
    );
  }
}
