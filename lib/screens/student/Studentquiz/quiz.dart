// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/Studentquiz/quiz_web.dart';

import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../utils/config.dart';

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
      child: ScreenTypeLayout(
        mobile: QuizzWeb(),
        tablet: QuizzWeb(),
        desktop: QuizzWeb(),
      ),
    );
  }
}
