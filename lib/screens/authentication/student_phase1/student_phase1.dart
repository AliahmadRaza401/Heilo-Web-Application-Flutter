// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:heilo/screens/authentication/Intro/intro_web.dart';
import 'package:heilo/screens/authentication/student_phase1/student_phase1_mobile.dart';
import 'package:heilo/screens/authentication/student_phase1/student_phase1_web.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StudentPhase1 extends StatelessWidget {
  const StudentPhase1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 1),
        child: ScreenTypeLayout(
          mobile: StudentPhase1Mobile(),
          tablet:StudentPhase1Web(),
          desktop: StudentPhase1Web(),
        ),
      ),
    );
  }
}
