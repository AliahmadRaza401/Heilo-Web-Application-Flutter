// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/authentication/Popups/auth_popUp.dart';
import 'package:heilo/screens/authentication/student_phase1/student_phase1.dart';
import 'package:heilo/screens/teacher/Main_SideMenu/teacher_sidemenu.dart';
import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../admin/sideMenu/admin_sidemenu_main.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: AppSizes.dynamicHeight(context, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                // color: Colors.amber,
                margin: EdgeInsets.only(
                  top: AppSizes.dynamicHeight(context, 0.03),
                  right: 10,
                ),
                // width: AppSizes.dynamicWidth(context, 0.2),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        loginPopUpMobile(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 200.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: text(context, "LOG  IN",
                            AppSizes.dynamicWidth(context, 0.02), Colors.white,
                            bold: true),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 2,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        signUpPopUpMobile(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 200.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: text(context, "SIGN  UP",
                            AppSizes.dynamicWidth(context, 0.02), Colors.white,
                            bold: true),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            // color: Colors.amber,
            child: Image.asset(
              'assets/png/logo.png',
              width: AppSizes.dynamicWidth(context, 0.3),
              height: AppSizes.dynamicHeight(context, 0.3),
            ),
          ),
          Container(
            width: AppSizes.dynamicWidth(context, 1),
            height: AppSizes.dynamicHeight(context, 0.6),
            decoration: BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
                image: AssetImage("assets/png/c1.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, StudentPhase1());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 350.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: AppColors.customWhite,
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/png/Group 1026.png',
                              width: 50.w,
                              height: 50.h,
                            ),
                            text(
                                context,
                                "Student",
                                AppSizes.dynamicWidth(context, 0.025),
                                Colors.black),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, TeacherSideMenu());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 350.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: AppColors.customWhite,
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/png/Group 528.png',
                              width: 50.w,
                              height: 50.h,
                            ),
                            text(
                                context,
                                "Teacher",
                                AppSizes.dynamicWidth(context, 0.025),
                                Colors.black),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppRoutes.push(context, AdminSideMenuMain());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 350.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: AppColors.customWhite,
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/png/Group 528.png',
                              width: 50.w,
                              height: 50.h,
                            ),
                            text(
                                context,
                                "Admin",
                                AppSizes.dynamicWidth(context, 0.025),
                                Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
