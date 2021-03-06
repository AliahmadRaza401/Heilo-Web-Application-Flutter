import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/AdminContact/admin_contact_mobile.dart';
import 'package:heilo/screens/admin/AdminContact/admin_contact_web.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_mobile.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_web.dart';
import 'package:responsive_builder/responsive_builder.dart';



class AdminContact extends StatefulWidget {
  const AdminContact({ Key? key }) : super(key: key);

  @override
  State<AdminContact> createState() => _AdminContactState();
}

class _AdminContactState extends State<AdminContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: AdminContactMobile(),
        tablet: AdminContactWeb(),
        desktop: AdminContactWeb(),
      ),
    );
  }
}