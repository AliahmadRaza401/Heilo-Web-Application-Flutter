import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'studentInboxWeb.dart';

class StudentInbox extends StatefulWidget {
  const StudentInbox({Key? key}) : super(key: key);

  @override
  State<StudentInbox> createState() => _StudentInboxState();
}

class _StudentInboxState extends State<StudentInbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),

      child: ScreenTypeLayout(
        mobile: StudentInboxWeb(),
        tablet: StudentInboxWeb(),
        desktop: StudentInboxWeb(),
      ),
    );
  }
}
