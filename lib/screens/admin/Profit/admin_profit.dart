import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/Profit/profit_mobile.dart';
import 'package:heilo/screens/admin/Profit/profit_web.dart';
import 'package:responsive_builder/responsive_builder.dart';



class AdminProfit extends StatefulWidget {
  const AdminProfit({ Key? key }) : super(key: key);

  @override
  State<AdminProfit> createState() => _AdminProfitState();
}

class _AdminProfitState extends State<AdminProfit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: ProfitMobile(),
        tablet: ProfitWeb(),
        desktop: ProfitWeb(),
      ),
    );
  }
}