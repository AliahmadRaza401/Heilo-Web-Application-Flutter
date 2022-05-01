import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'teacher_editProfile_Mobile.dart';
import 'teacher_editProfile_web.dart';


class TeacherEditProfile extends StatefulWidget {
  const TeacherEditProfile({ Key? key }) : super(key: key);

  @override
  State<TeacherEditProfile> createState() => _TeacherEditProfileState();
}

class _TeacherEditProfileState extends State<TeacherEditProfile> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: TeacherEditProfileMobile(),
        tablet: TeacherEditProfileWeb(),
        desktop: TeacherEditProfileWeb(),
      ),
    );
  }
}