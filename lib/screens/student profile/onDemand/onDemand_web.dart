// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../../utils/config.dart';

class OnDemandWeb extends StatefulWidget {
  const OnDemandWeb({Key? key}) : super(key: key);

  @override
  State<OnDemandWeb> createState() => _OnDemandWebState();
}

class _OnDemandWebState extends State<OnDemandWeb> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 1),
        decoration: BoxDecoration(
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.all(20.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 180.w),
                    child: SizedBox(
                      width: 760.w,
                      height: 128.h,
                      child: Center(
                        child: Container(
                          width: 502.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                              color: AppColors.customGrey,
                              width: 2.0,
                            ),
                          ),
                          child: TabBar(
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(100.0),
                                bottomRight: Radius.circular(100.0),
                                bottomLeft: Radius.circular(100.0),
                              ),
                              color: AppColors.greenDark,
                            ),
                            unselectedLabelStyle: TextStyle(
                              color: AppColors.greenDark,
                            ),
                            unselectedLabelColor: Colors.black,
                            labelColor: AppColors.customWhite,
                            labelStyle: TextStyle(
                              color: AppColors.customWhite,
                              fontWeight: FontWeight.bold,
                            ),
                            tabs: [
                              Tab(
                                text: "Subject",
                              ),
                              Tab(
                                text: "Topic",
                              ),
                              Tab(
                                text: "Search",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.notifications,
                        color: AppColors.greenDark,
                      ),
                      AppSizes.widthBox(context, .01),
                      CircleAvatar(
                        radius: 32.r,
                        backgroundColor: AppColors.green,
                        child: CircleAvatar(
                          radius: 28.r,
                          backgroundImage: const AssetImage(
                            "assets/png/wp2398385 1.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              AppSizes.heightBox(context, .02),
              Padding(
                padding: EdgeInsets.only(left: 180.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 760.w,
                      height: 720.h,
                      child: TabBarView(
                        children: [
                          SizedBox(
                            width: 760.w,
                            height: 700.h,
                            child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, i) {
                                return profileCard(context);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 760.w,
                            height: 700.h,
                            child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, i) {
                                return profileCard(context);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 760.w,
                            height: 700.h,
                            child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, i) {
                                return profileCard(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 526.w,
                      height: 740.h,
                      decoration: BoxDecoration(
                        color: AppColors.customGrey,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 16.h,
                        horizontal: 25.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                            context,
                            "Notifications",
                            18.sp,
                            AppColors.customGreen,
                          ),
                          SizedBox(
                            width: 460.w,
                            height: 660.h,
                            child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, i) {
                                return notificationCard(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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