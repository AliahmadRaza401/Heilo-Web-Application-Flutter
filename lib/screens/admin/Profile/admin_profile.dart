import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/Profile/profile_mobile.dart';
import 'package:heilo/screens/admin/Profile/profile_web.dart';
import 'package:responsive_builder/responsive_builder.dart';



class AdminProfile extends StatefulWidget {
  const AdminProfile({ Key? key }) : super(key: key);

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: ProfileMobile(),
        tablet: ProfileWeb(),
        desktop: ProfileWeb(),
      ),
    );
  }
}