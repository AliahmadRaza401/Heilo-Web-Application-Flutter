import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student%20profile/onDemand/on_demand.dart';
import 'package:heilo/screens/student%20profile/studentprofile_mobile.dart';
import 'package:heilo/screens/student%20profile/studentprofile_web.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return ScreenTypeLayout(
      mobile: StudentProfileMobile(),
      tablet: StudentProfileWeb(),
      desktop: StudentProfileWeb(),
    );
  }
}
