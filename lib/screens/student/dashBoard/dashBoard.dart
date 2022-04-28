import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'dashBoardMobile.dart';
import 'dashBoardWeb.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: DashBoardMobile(),
        tablet: DashBoaedWeb(),
        desktop: DashBoaedWeb(),
      ),
    );
  }
}