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
        // color: Colors.amber,
        height: AppSizes.dynamicHeight(context, 1),
        child: Stack(
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
                heightPercentages: [0.30, 0.30, 0.30],
                blur: _blur,
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
                        TextBtn(title: "SSC"),
                        TextBtn(title: "HSC"),
                        TextBtn(title: "A LEVELS"),
                        TextBtn(title: "O LEVELS"),
                        InkWell(
                            onTap: () {
                              AppRoutes.push(context, StudentPhase2());
                            },
                            child: TextBtn(title: "ADMISSION")),
                      ]),
                ),
              ],
            ),
          ],
        ));


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
