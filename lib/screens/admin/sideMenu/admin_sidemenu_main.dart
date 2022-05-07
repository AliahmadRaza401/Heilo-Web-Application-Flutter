import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_mobile.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../Dashboard/dash_board.dart';
import 'admin_sideMenu.dart';



class AdminSideMenuMain extends StatefulWidget {
  const AdminSideMenuMain({ Key? key }) : super(key: key);

  @override
  State<AdminSideMenuMain> createState() => _AdminSideMenuMainState();
}

class _AdminSideMenuMainState extends State<AdminSideMenuMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: AdminDashBoard(),
        tablet: AdminSideMenu(),
        desktop:AdminSideMenu(),
      ),
    );
  }
}