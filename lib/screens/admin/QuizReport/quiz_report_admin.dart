import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/QuizReport/quiz_report.dart';
import 'package:heilo/screens/admin/QuizReport/quiz_report_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';



class AdminQuizReport extends StatefulWidget {
  const AdminQuizReport({ Key? key }) : super(key: key);

  @override
  State<AdminQuizReport> createState() => _AdminQuizReportState();
}

class _AdminQuizReportState extends State<AdminQuizReport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: QuizReportMobile(),
        tablet: QuizReportWeb(),
        desktop: QuizReportWeb(),
      ),
    );
  }
}