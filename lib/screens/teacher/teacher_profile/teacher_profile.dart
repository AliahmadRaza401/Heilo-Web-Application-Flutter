import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'teacherprofile_mobile.dart';
import 'teacherprofile_web.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  State<TeacherProfile> createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return ScreenTypeLayout(
      mobile: TeacherProfileMobile(),
      tablet: TeacherProfileWeb(),
      desktop: TeacherProfileWeb(),
    );
  }
}
