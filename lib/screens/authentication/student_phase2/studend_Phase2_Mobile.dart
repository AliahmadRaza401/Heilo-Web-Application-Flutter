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
import 'package:wave/config.dart';

import '../../student/Main_SideMenu/student_sidemenu.dart';
import '../waves.dart';

class StudentPhase2Mobile extends StatelessWidget {
  const StudentPhase2Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.amber,
        height: AppSizes.dynamicHeight(context, 1),
        child: Stack(
          children: [
            buildCard(
              context: context,
              backgroundColor: Colors.white,
              config: CustomConfig(
                gradients: [
                  [Color(0xffA6FFCB), Color(0xffA6FFCB)],
                  [Color(0xff32E8A0), Color(0xff32E8A0)],
                  [Color(0xFF12D8FA), Color(0xFF12D8FA)],
                ],
                durations: [25000, 19440, 6000],
                heightPercentages: [0.30, 0.30, 0.30],
                blur: blur,
                gradientBegin: Alignment.bottomLeft,
                gradientEnd: Alignment.topRight,
              ),
              backgroundImage: DecorationImage(image: AssetImage('')),
              // backgroundImage: AssetImage(assetName),
            ),
            Column(
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
                              width: 400.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context,
                                  "LOG  IN",
                                  AppSizes.dynamicWidth(context, 0.04),
                                  Colors.white,
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
                              width: 400.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context,
                                  "SIGN  UP",
                                  AppSizes.dynamicWidth(context, 0.04),
                                  Colors.white,
                                  bold: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: AppSizes.dynamicHeight(context, 0.5),
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
                      ]),
                ),
              ],
            ),
          ],
        ));
    //  Container(
    //   width: AppSizes.dynamicWidth(context, 1),
    //   height: AppSizes.dynamicHeight(context, 1),
    //   child: Column(
    //     children: [
    //       Container(
    //         width: AppSizes.dynamicWidth(context, 1),
    //         height: AppSizes.dynamicHeight(context, 1),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               height: 10.h,
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 InkWell(
    //                   onTap: () {
    //                     loginPopUpMobile(context);
    //                   },
    //                   child: Container(
    //                     alignment: Alignment.center,
    //                     width: 400.w,
    //                     height: 30.h,
    //                     decoration: BoxDecoration(
    //                       color: AppColors.blue,
    //                       borderRadius: BorderRadius.circular(20),
    //                     ),
    //                     child: text(
    //                         context,
    //                         "LOG  IN",
    //                         Responsive.isDesktop(context)
    //                             ? 18.sp
    //                             : AppSizes.dynamicWidth(context, 0.04),
    //                         Colors.white,
    //                         bold: true),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10,
    //                 ),
    //                 InkWell(
    //                   onTap: () {
    //                     signUpPopUpMobile(context);
    //                   },
    //                   child: Container(
    //                     alignment: Alignment.center,
    //                     width: 2,
    //                     height: 25.h,
    //                     decoration: BoxDecoration(
    //                       color: AppColors.green,
    //                       borderRadius: BorderRadius.circular(2),
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10,
    //                 ),
    //                 Container(
    //                   alignment: Alignment.center,
    //                   width: 400.w,
    //                   height: 30.h,
    //                   decoration: BoxDecoration(
    //                     color: AppColors.green,
    //                     borderRadius: BorderRadius.circular(20),
    //                   ),
    //                   child: text(
    //                       context,
    //                       "SIGN  UP",
    //                       Responsive.isDesktop(context)
    //                           ? 18.sp
    //                           : AppSizes.dynamicWidth(context, 0.04),
    //                       Colors.white,
    //                       bold: true),
    //                 ),
    //                  SizedBox(
    //                   width: 10,
    //                 ),
    //               ],
    //             ),
    //             SizedBox(
    //               height: 40.h,
    //             ),
    //             Center(
    //               child: Container(
    //                 height: 403.h,
    //                 // width: 553,
    //                 // height: AppSizes.dynamicHeight(context, 1),
    //                 width: AppSizes.dynamicHeight(context, 1),
    //                 decoration: BoxDecoration(
    //                   // color: AppColors.green,
    //                   image: DecorationImage(
    //                     image: AssetImage("assets/png/c3.png"),
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                   children: [
    //                     InkWell(
    //                         onTap: () {
    //                           AppRoutes.push(context, StudentSideMenu());
    //                         },
    //                         child: TextBtn(title: "SSC")),
    //                     InkWell(
    //                         onTap: () {
    //                           AppRoutes.push(context, StudentSideMenu());
    //                         },
    //                         child: TextBtn(title: "HSC")),
    //                     InkWell(
    //                         onTap: () {
    //                           AppRoutes.push(context, StudentSideMenu());
    //                         },
    //                         child: TextBtn(title: "HSC")),
    //                     // SizedBox(
    //                     //   height: 40.h,
    //                     // ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
