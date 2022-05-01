import 'package:flutter/material.dart';
import 'package:heilo/screens/student/Main_SideMenu/student_sidemeu_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'student_sidemenu_mobile.dart';

class StudentSideMenu extends StatelessWidget {
  const StudentSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
      child: ScreenTypeLayout(
        mobile: StudentSideMenuMobile(),
        tablet: StudentSideMenuWeb(),
        desktop: StudentSideMenuWeb(),
      ),
    );
  }
}
