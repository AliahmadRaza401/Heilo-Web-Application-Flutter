import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_mobile.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_web.dart';
import 'package:responsive_builder/responsive_builder.dart';



class AdminDashBoard extends StatefulWidget {
  const AdminDashBoard({ Key? key }) : super(key: key);

  @override
  State<AdminDashBoard> createState() => _AdminDashBoardState();
}

class _AdminDashBoardState extends State<AdminDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: AdminDashboardMobile(),
        tablet: AdminDashboardWeb(),
        desktop: AdminDashboardWeb(),
      ),
    );
  }
}