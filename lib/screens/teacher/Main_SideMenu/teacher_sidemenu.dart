import 'package:flutter/material.dart';
import 'package:heilo/screens/student/Main_SideMenu/student_sidemeu_web.dart';
import 'package:heilo/screens/teacher/Main_SideMenu/teacher_sidemeu_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'teacher_sidemenu_mobile.dart';

class TeacherSideMenu extends StatelessWidget {
  const TeacherSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
      child: ScreenTypeLayout(
        mobile: TeacherSideMenuMobile(),
        tablet: TeacherSideMenuWeb(),
        desktop: TeacherSideMenuWeb(),
      ),
    );
  }
}
