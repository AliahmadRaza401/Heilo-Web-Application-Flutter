// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../utils/config.dart';
import 'onDemand_web.dart';
import 'on_demand_mobile.dart';

class OnDemand extends StatefulWidget {
  const OnDemand({Key? key}) : super(key: key);

  @override
  State<OnDemand> createState() => _OnDemandState();
}

class _OnDemandState extends State<OnDemand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
      child: ScreenTypeLayout(
        mobile: OnDemandMobile(),
        tablet: OnDemandWeb(),
        desktop: OnDemandWeb(),
      ),
    );
  }
}

Widget profileCard(context) {
  return Container(
    width: 700.w,
    height: 130.h,
    decoration: BoxDecoration(
      color: AppColors.customGrey,
      borderRadius: BorderRadius.circular(10.r),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 54.w,
      vertical: 14.h,
    ),
    margin: EdgeInsets.only(bottom: 14.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 46.r,
              backgroundImage: const AssetImage(
                "assets/png/wp2398385 1.png",
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text(
              context,
              "SAKIB ABDULLAH",
              20.sp,
              AppColors.customBlack,
              bold: true,
            ),
            text(
              context,
              "bangladesh University Of Professionals\nAccounting , Finance, English, ICT ",
              14.sp,
              AppColors.customBlack,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 42.h,
              width: 146.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child:
                  Center(child: text(context, "450/hr", 18.sp, Colors.black)),
            ),
            Container(
              height: 42.h,
              width: 146.w,
              decoration: BoxDecoration(
                color: AppColors.greenDark,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child:
                  Center(child: text(context, "Message", 18.sp, Colors.white)),
            ),
            // coloredButton(
            //   context,
            //   "450/Hr",
            //   AppColors.customWhite,
            //   width: 146.w,
            //   height: 42.h,
            // ),
            // coloredButton(
            //   context,
            //   "Message",
            //   AppColors.greenDark,
            //   width: 146.w,
            //   height: 42.h,
            //   fontColor: true,
            // ),
          ],
        ),
      ],
    ),
  );
}

Widget notificationCard(context) {
  return Container(
    width: 476.w,
    height: 76.h,
    decoration: BoxDecoration(
      color: Color(0xff1BE59D),
      borderRadius: BorderRadius.circular(30.r),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 18.w,
      vertical: 10.h,
    ),
    margin: EdgeInsets.only(bottom: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 26.r,
          backgroundImage: const AssetImage(
            "assets/png/wp2398385 1.png",
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text(
              context,
              "You have received a tution request from \nSalsabil Murshed.",
              16.sp,
              AppColors.customBlack,
            ),
          ],
        ),
      ],
    ),
  );
}
