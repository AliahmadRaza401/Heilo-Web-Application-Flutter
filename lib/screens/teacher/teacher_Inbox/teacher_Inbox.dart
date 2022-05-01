import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'teacher_InboxWeb.dart';

class TeacherInbox extends StatefulWidget {
  const TeacherInbox({Key? key}) : super(key: key);

  @override
  State<TeacherInbox> createState() => _TeacherInboxState();
}

class _TeacherInboxState extends State<TeacherInbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),

      child: ScreenTypeLayout(
        mobile: TeacherInboxWeb(),
        tablet: TeacherInboxWeb(),
        desktop: TeacherInboxWeb(),
      ),
    );
  }
}
