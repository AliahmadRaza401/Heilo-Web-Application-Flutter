// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/authentication/Popups/auth_popUp.dart';
import 'package:heilo/screens/authentication/waves.dart';

import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/utils/responsive.dart';
import 'package:heilo/widgets/basic_widgets.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:wave/config.dart';

import '../../student/Main_SideMenu/student_sidemenu.dart';

class StudentPhase2Web extends StatelessWidget {
  const StudentPhase2Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 1),
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
              heightPercentages: [0.2, 0.2, 0.2],
              blur: blur,
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            backgroundImage: const DecorationImage(image: AssetImage('')),
            // backgroundImage: AssetImage(assetName),
          ),
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
                        loginPopUp(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: text(context, "LOG  IN", 18.sp, Colors.white,
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
                        signUpPopUp(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: text(context, "SIGN  UP", 18.sp, Colors.white,
                            bold: true),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            child: Container(
              width: AppSizes.dynamicWidth(context, 1),
              height: AppSizes.dynamicHeight(context, 0.6),
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
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
                      ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    // Container(
    //   width: AppSizes.dynamicWidth(context, 1),
    //   height: AppSizes.dynamicHeight(context, 1),
    //   child: Column(
    //     children: [
    //       Container(
    //         width: AppSizes.dynamicWidth(context, 1),
    //         height: AppSizes.dynamicHeight(context, 1),
    //         child: Column(
    //           mainAxisAlignment: Responsive.isDesktop(context)
    //               ? MainAxisAlignment.spaceEvenly
    //               : MainAxisAlignment.start,
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 Container(
    //                   // color: Colors.amber,
    //                   margin: EdgeInsets.only(
    //                     top: AppSizes.dynamicHeight(context, 0.03),
    //                     right: 10,
    //                   ),
    //                   // width: AppSizes.dynamicWidth(context, 0.2),
    //                   child: Row(
    //                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       InkWell(
    //                         onTap: () {
    //                           loginPopUpMobile(context);
    //                         },
    //                         child: Container(
    //                           alignment: Alignment.center,
    //                           width:
    //                               Responsive.isDesktop(context) ? 100.w : 200.w,
    //                           height: 25.h,
    //                           decoration: BoxDecoration(
    //                             color: AppColors.blue,
    //                             borderRadius: BorderRadius.circular(20),
    //                           ),
    //                           child: text(
    //                               context,
    //                               "LOG  IN",
    //                               Responsive.isDesktop(context)
    //                                   ? 18.sp
    //                                   : AppSizes.dynamicWidth(context, 0.02),
    //                               Colors.white,
    //                               bold: true),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 10,
    //                       ),
    //                       InkWell(
    //                         onTap: () {
    //                           signUpPopUpMobile(context);
    //                         },
    //                         child: Container(
    //                           alignment: Alignment.center,
    //                           width: 2,
    //                           height: 25.h,
    //                           decoration: BoxDecoration(
    //                             color: AppColors.green,
    //                             borderRadius: BorderRadius.circular(2),
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 10,
    //                       ),
    //                       Container(
    //                         alignment: Alignment.center,
    //                         width:
    //                             Responsive.isDesktop(context) ? 100.w : 200.w,
    //                         height: 25.h,
    //                         decoration: BoxDecoration(
    //                           color: AppColors.green,
    //                           borderRadius: BorderRadius.circular(20),
    //                         ),
    //                         child: text(
    //                             context,
    //                             "SIGN  UP",
    //                             Responsive.isDesktop(context)
    //                                 ? 18.sp
    //                                 : AppSizes.dynamicWidth(context, 0.02),
    //                             Colors.white,
    //                             bold: true),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             Responsive.isDesktop(context)
    //                 ? SizedBox(
    //                     height: 40.h,
    //                   )
    //                 : SizedBox(),
    //             Container(
    //               height: Responsive.isDesktop(context)
    //                   ? AppSizes.dynamicHeight(context, 0.8)
    //                   : AppSizes.dynamicHeight(context, 0.5),
    //               decoration: BoxDecoration(
    //                 // color: AppColors.green,
    //                 image: DecorationImage(
    //                   image: AssetImage("assets/png/c3.png"),
    //                   fit: BoxFit.fill,
    //                 ),
    //               ),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     InkWell(
    //         onTap: () {
    //           AppRoutes.push(context, StudentSideMenu());
    //         },
    //         child: TextBtn(title: "SSC")),
    //     InkWell(
    //         onTap: () {
    //           AppRoutes.push(context, StudentSideMenu());
    //         },
    //         child: TextBtn(title: "HSC")),
    //     InkWell(
    //         onTap: () {
    //           AppRoutes.push(context, StudentSideMenu());
    //         },
    //         child: TextBtn(title: "HSC")),
    //                     ],
    //                   ),
    //                 ],
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
