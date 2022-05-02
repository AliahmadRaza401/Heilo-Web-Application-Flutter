import 'package:flutter/material.dart';
import 'package:heilo/screens/teacher/dashBoard/teacher_dashBoardMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'teacher_dashBoardWeb.dart';


class TeacherDashBoard extends StatefulWidget {
  const TeacherDashBoard({ Key? key }) : super(key: key);

  @override
  State<TeacherDashBoard> createState() => _TeacherDashBoardState();
}

class _TeacherDashBoardState extends State<TeacherDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: TeacherDashBoardMobile(),
        tablet: TeacherDashBoaedWeb(),
        desktop: TeacherDashBoaedWeb(),
      ),
    );
  }
}