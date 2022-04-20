import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/authentication/Popups/auth_popUp.dart';
import 'package:heilo/screens/authentication/student_phase2/student_phase2.dart';
import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/basic_widgets.dart';
import 'package:heilo/widgets/text_widget.dart';

class StudentPhase1Mobile extends StatelessWidget {
  const StudentPhase1Mobile({Key? key}) : super(key: key);

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
                              loginPopUp(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 200.w,
                              height: 30.h,
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
                              width: 200.w,
                              height: 30.h,
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
                  height: AppSizes.dynamicHeight(context, 0.45),
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
