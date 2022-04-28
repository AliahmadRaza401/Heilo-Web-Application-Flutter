// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/form_fields.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../../utils/config.dart';

class QuizzWeb extends StatefulWidget {
  const QuizzWeb({Key? key}) : super(key: key);

  @override
  State<QuizzWeb> createState() => _QuizzWebState();
}

class _QuizzWebState extends State<QuizzWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              mainAxisAlignment: MainAxisAlignment.end,
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
            AppSizes.heightBox(context, .01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    // width: 760.w,
                    // height: 720.h,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            text(
                              context,
                              "TEST YOURSELF \n KNOW YOURSELF",
                              40.sp,
                              AppColors.greenDark,
                              bold: FontWeight.bold,
                            ),
                          ],
                        ),
                        
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 65.h,
                              width: 510.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.w),
                                border: Border.all(
                                    color: AppColors.lightgreyborder, width: 4),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 300.w,
                                    padding: EdgeInsets.only(
                                      left: 50.w,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Enter Your Subject',
                                          hintStyle: TextStyle(
                                            color: AppColors.greyText,
                                          )),
                                    ),
                                  ),
                                  Container(
                                      width: 182.w,
                                      height: 65.h,
                                      decoration: BoxDecoration(
                                          color: AppColors.greenDark,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(40.r),
                                            bottomRight: Radius.circular(40.r),
                                            bottomLeft: Radius.circular(40.r),
                                          )),
                                      child: Center(
                                        child: text(context, "SEARCH", 22.sp,
                                            AppColors.customWhite),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Wrap(
                          spacing: 50.w,
                          runSpacing: 20.h,
                          children: [
                            courseCard(context),
                            courseCard(context),
                            courseCard(context),
                            courseCard(context),
                            courseCard(context),
                            courseCard(context),
                          ],
                        ),
                      ],
                    ),
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
          ],
        ),
      ),
    );
  }
}

Widget courseCard(context) {
  return Container(
    width: 300.w,
    height: 300.h,
    decoration: BoxDecoration(
      color: AppColors.lightgreyborder,
      borderRadius: BorderRadius.circular(30.r),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // margin: EdgeInsets.symmetric(
          //   vertical: 10.h,
          // ),
          width: 265.w,
          height: 185.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            image: DecorationImage(
              image: AssetImage("assets/png/bluebook.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(""),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/png/bookicon.png',
              height: 30.w,
              width: 30.h,
            ),
            text(context, "Chapter-1 : Speed", 16.sp, Colors.black),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text(context, "Question: 25", 16.sp, Color(0xff6F6F6F)),
            text(context, "Time : 25 minutes", 16.sp, Color(0xff6F6F6F)),
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
