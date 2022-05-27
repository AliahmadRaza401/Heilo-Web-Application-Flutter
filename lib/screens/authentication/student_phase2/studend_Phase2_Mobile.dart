// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/authentication/Popups/auth_popUp.dart';

import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/utils/responsive.dart';
import 'package:heilo/widgets/basic_widgets.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../student/Main_SideMenu/student_sidemenu.dart';

class StudentPhase2Mobile extends StatelessWidget {
  const StudentPhase2Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 1),
      height: AppSizes.dynamicHeight(context, 1),
      child: Column(
        children: [
          Container(
            width: AppSizes.dynamicWidth(context, 1),
            height: AppSizes.dynamicHeight(context, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        loginPopUpMobile(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 400.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: text(
                            context,
                            "LOG  IN",
                            Responsive.isDesktop(context)
                                ? 18.sp
                                : AppSizes.dynamicWidth(context, 0.04),
                            Colors.white,
                            bold: true),
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
                        width: 2,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 400.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: text(
                          context,
                          "SIGN  UP",
                          Responsive.isDesktop(context)
                              ? 18.sp
                              : AppSizes.dynamicWidth(context, 0.04),
                          Colors.white,
                          bold: true),
                    ),
                     SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Container(
                    height: 403.h,
                    // width: 553,
                    // height: AppSizes.dynamicHeight(context, 1),
                    width: AppSizes.dynamicHeight(context, 1),
                    decoration: BoxDecoration(
                      // color: AppColors.green,
                      image: DecorationImage(
                        image: AssetImage("assets/png/c3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              AppRoutes.push(context, StudentSideMenu());
                            },
                            child: TextBtn(title: "SSC")),
                        InkWell(
                            onTap: () {
                              AppRoutes.push(context, StudentSideMenu());
                            },
                            child: TextBtn(title: "HSC")),
                        InkWell(
                            onTap: () {
                              AppRoutes.push(context, StudentSideMenu());
                            },
                            child: TextBtn(title: "HSC")),
                        // SizedBox(
                        //   height: 40.h,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
