// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:heilo/screens/authentication/Intro/intro_web.dart';
import 'package:heilo/screens/authentication/student_phase1/student_phase1_web.dart';
import 'package:heilo/screens/authentication/student_phase2/studend_Phase2_Mobile.dart';
import 'package:heilo/screens/authentication/student_phase2/student_phase2_web.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StudentPhase2 extends StatelessWidget {
  const StudentPhase2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 1),
        child: ScreenTypeLayout(
          mobile: StudentPhase2Mobile(),
          tablet:StudentPhase2Web(),
          desktop: StudentPhase2Web(),
        ),
      ),
    );
  }
}
