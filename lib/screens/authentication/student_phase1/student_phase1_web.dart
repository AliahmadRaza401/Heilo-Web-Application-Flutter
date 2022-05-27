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

class StudentPhase1Web extends StatefulWidget {
  const StudentPhase1Web({Key? key}) : super(key: key);

  @override
  State<StudentPhase1Web> createState() => _StudentPhase1WebState();
}

class _StudentPhase1WebState extends State<StudentPhase1Web> {
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
      child:
      //  Center(
      //   child: ListView(
      //     children: <Widget>[
      //       SizedBox(height: 16.0),
      //       // _buildCard(
      //       //   backgroundColor: Colors.white,
      //       //   config: CustomConfig(
      //       //     gradients: [
      //       //       [Color(0xffA6FFCB), Color(0xffA6FFCB)],
      //       //       [Color(0xff32E8A0), Color(0xff32E8A0)],
      //       //       [Color(0xFF12D8FA), Color(0xFF12D8FA)],
      //       //     ],
      //       //     durations: [25000, 19440, 6000],
      //       //     heightPercentages: [0.40, 0.40, 0.40],
      //       //     blur: _blur,
      //       //     gradientBegin: Alignment.topLeft,
      //       //     gradientEnd: Alignment.topRight,
      //       //   ),
      //       //   backgroundImage: DecorationImage(
      //       //       image: AssetImage('')),
      //       //   // backgroundImage: AssetImage(assetName),
      //       // ),
      //       // // _buildCard(

      //       //   backgroundImage: DecorationImage(
      //       //     image: NetworkImage(
      //       //       'https://images.unsplash.com/photo-1600107363560-a2a891080c31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=672&q=80',
      //       //     ),
      //       //     fit: BoxFit.cover,
      //       //     colorFilter:
      //       //         ColorFilter.mode(Colors.white, BlendMode.softLight),
      //       //   ),
      //       //   config: CustomConfig(
      //       //     colors: [
      //       //       Colors.pink,
      //       //       Colors.pink,
      //       //       Colors.pink,
      //       //       Colors.pink
      //       //     ],
      //       //     durations: [18000, 8000, 5000, 12000],
      //       //     heightPercentages: [0.85, 0.86, 0.88, 0.90],
      //       //     blur: _blur,
      //       //   ),
      //       // ),
      //       // _buildCard(
      //       //     config: CustomConfig(
      //       //       colors: [
      //       //         Colors.white70,
      //       //         Colors.white54,
      //       //         Colors.white30,
      //       //         Colors.white24,
      //       //       ],
      //       //       durations: [32000, 21000, 18000, 5000],
      //       //       heightPercentages: [0.25, 0.26, 0.28, 0.31],
      //       //       blur: _blur,
      //       //     ),
      //       //     backgroundColor: Colors.blue, backgroundImage: DecorationImage(image: AssetImage('assets/png/wp2398385 1.png'))),
      //     ],
      //   ),
      // ),

      Column(
        children: [
          Container(
            width: AppSizes.dynamicWidth(context, 1),
            height: AppSizes.dynamicHeight(context, 0.9),
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
                              loginPopUp(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 100.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: AppColors.customWhite,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context, "LOG  IN", 18.sp, AppColors.blue,
                                  bold: true),
                            ),
                          ),
                          SizedBox(
                            width: 20,
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: text(
                                  context, "SIGN  UP", 18.sp, AppColors.blue,
                                  bold: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: AppSizes.dynamicHeight(context, 0.6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextBtn(title: "SSC"),
                          TextBtn(title: "HSC"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextBtn(title: "A LEVELS"),
                          TextBtn(title: "O LEVELS"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                AppRoutes.push(context, StudentPhase2());
                              },
                              child: TextBtn(title: "ADMISSION")),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
