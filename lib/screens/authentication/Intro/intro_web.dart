// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/sideMenu/admin_sideMenu.dart';
import 'package:heilo/screens/authentication/Popups/auth_popUp.dart';
import 'package:heilo/screens/authentication/student_phase1/student_phase1.dart';
import 'package:heilo/screens/teacher/Main_SideMenu/teacher_sidemenu.dart';
import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../../admin/sideMenu/admin_sidemenu_main.dart';

class IntroWeb extends StatefulWidget {
  const IntroWeb({Key? key}) : super(key: key);

  @override
  State<IntroWeb> createState() => _IntroWebState();
}

class _IntroWebState extends State<IntroWeb> {
_buildCard({
    required Config config,
    Color backgroundColor = Colors.transparent,
    required DecorationImage backgroundImage,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Card(
        elevation: 12.0,
        // margin: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: WaveWidget(
          config: config,
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          size: Size(double.infinity, double.infinity),
          waveAmplitude: 45,
        ),
      ),
    );
  }

  MaskFilter? _blur;

  final List<MaskFilter> _blurs = [
    MaskFilter.blur(BlurStyle.normal, 10.0),
    MaskFilter.blur(BlurStyle.normal, 10.0),
    MaskFilter.blur(BlurStyle.inner, 10.0),
    MaskFilter.blur(BlurStyle.outer, 10.0),
    MaskFilter.blur(BlurStyle.solid, 16.0),
  ];

  int _blurIndex = 0;

  MaskFilter _nextBlur() {
    if (_blurIndex == _blurs.length - 1) {
      _blurIndex = 0;
    } else {
      _blurIndex = _blurIndex + 1;
    }
    _blur = _blurs[_blurIndex];
    return _blurs[_blurIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: AppSizes.dynamicHeight(context, 1),
      child:Stack(
        children: [
           _buildCard(
              backgroundColor: Colors.white,
              config: CustomConfig(
                gradients: [
                  [Color(0xffA6FFCB), Color(0xffA6FFCB)],
                  [Color(0xff32E8A0), Color(0xff32E8A0)],
                  [Color(0xFF12D8FA), Color(0xFF12D8FA)],
                ],
                durations: [25000, 19440, 6000],
                heightPercentages: [0.40, 0.40, 0.40],
                blur: _blur,
                gradientBegin: Alignment.bottomLeft,
                gradientEnd: Alignment.topRight,
              ),
              backgroundImage: DecorationImage(
                  image: AssetImage('')),
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
            // decoration: BoxDecoration(
            //   // color: Colors.amber,
            //   image: DecorationImage(
            //     image: AssetImage("assets/png/c1.png"),
            //     fit: BoxFit.fill,
            //   ),
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    AppRoutes.push(context, StudentPhase1());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 350.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/png/Group 1026.png',
                          width: 50.w,
                          height: 50.h,
                        ),
                        text(context, "Student", 24.sp, Colors.black),
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
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/png/Group 528.png',
                          width: 50.w,
                          height: 50.h,
                        ),
                        text(context, "Teacher", 24.sp, Colors.black),
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
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/png/Group 528.png',
                          width: 50.w,
                          height: 50.h,
                        ),
                        text(context, "Admin", 24.sp, Colors.black),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
   
        ],
      ) );
  }
}
