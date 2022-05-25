import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/authentication/Popups/auth_popUp.dart';
import 'package:heilo/screens/authentication/student_phase2/student_phase2.dart';
import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/basic_widgets.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class StudentPhase1Mobile extends StatefulWidget {
  const StudentPhase1Mobile({Key? key}) : super(key: key);

  @override
  State<StudentPhase1Mobile> createState() => _StudentPhase1MobileState();
}

class _StudentPhase1MobileState extends State<StudentPhase1Mobile> {
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
      width: AppSizes.dynamicWidth(context, 1),
      height: AppSizes.dynamicHeight(context, 1),
      child: Column(
        children: [
          Container(
            width: AppSizes.dynamicWidth(context, 1),
            height: AppSizes.dynamicHeight(context, 0.8),
            decoration: BoxDecoration(
              // color: AppColors.green,
              image: DecorationImage(
                image: AssetImage("assets/png/c2.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
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
                                color: AppColors.customWhite,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context,
                                  "LOG  IN",
                                  AppSizes.dynamicWidth(context, 0.04),
                                  AppColors.blue,
                                  bold: true),
                            ),
                          ),
                          SizedBox(
                            width: 20,
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context,
                                  "SIGN  UP",
                                  AppSizes.dynamicWidth(context, 0.04),
                                  AppColors.blue,
                                  bold: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: AppSizes.dynamicHeight(context, 0.45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                         TextBtn(title: "SSC"),
                          TextBtn(title: "HSC"),
                             TextBtn(title: "A LEVELS"),
                          TextBtn(title: "O LEVELS"),
                            InkWell(
                              onTap: () {
                                AppRoutes.push(context, StudentPhase2());
                              },
                              child: TextBtn(title: "ADMISSION")),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     TextBtn(title: "SSC"),
                      //     TextBtn(title: "HSC"),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     TextBtn(title: "A LEVELS"),
                      //     TextBtn(title: "O LEVELS"),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     InkWell(
                      //         onTap: () {
                      //           AppRoutes.push(context, StudentPhase2());
                      //         },
                      //         child: TextBtn(title: "ADMISSION")),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                // ),
              // ],
               ] ),
          ),
        ],
      ),
    )]));
  }

  Widget textBtn(BuildContext context, text) {
    return Container(
      width: 350.w,
      height: 70.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: text(context, text, 24.sp, Colors.black),
    );
  }
}
