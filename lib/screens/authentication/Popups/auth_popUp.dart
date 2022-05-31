import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/custom_inputField.dart';
import 'package:heilo/widgets/text_widget.dart';

loginPopUp(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.r)), //this right here
          child: Container(
            width: 450.w,
            height: 700.h,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                AppRoutes.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: AppColors.greenDark,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            text(context, "Welcome back!", 30.sp,
                                AppColors.greenDark),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.greenDark),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                fontSize: 16.sp,
                              )),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.greenDark),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontSize: 16.sp,
                              )),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                color: AppColors.greenDark,
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                              alignment: Alignment.center,
                              child:
                                  text(context, "LOGIN", 20.sp, Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(
                              context,
                              "Create Account",
                              15.sp,
                              Color(0xff444F55),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(
                              context,
                              "Forget Password ?",
                              15.sp,
                              Color(0xff444F55),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: 172.w,
                              height: 3.h,
                              decoration: BoxDecoration(
                                color: AppColors.greenDark,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

loginPopUpMobile(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.r)), //this right here
          child: Container(
            width: 450.w,
            height: 500.h,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                AppRoutes.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: AppColors.greenDark,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            text(
                                context,
                                "Welcome back!",
                                AppSizes.dynamicWidth(context, 0.04),
                                AppColors.greenDark),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.greenDark),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                fontSize: AppSizes.dynamicWidth(context, 0.03),
                              )),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.greenDark),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffCED1D0)),
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontSize: AppSizes.dynamicWidth(context, 0.03),
                              )),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30.h,
                              width: AppSizes.dynamicWidth(context, 0.3),
                              decoration: BoxDecoration(
                                color: AppColors.greenDark,
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                              alignment: Alignment.center,
                              child: text(
                                  context,
                                  "LOGIN",
                                  AppSizes.dynamicWidth(context, 0.03),
                                  Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(
                              context,
                              "Create Account",
                              AppSizes.dynamicWidth(context, 0.03),
                              Color(0xff444F55),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(
                              context,
                              "Forget Password ?",
                              AppSizes.dynamicWidth(context, 0.04),
                              Color(0xff444F55),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: 172.w,
                              height: 3.h,
                              decoration: BoxDecoration(
                                color: AppColors.greenDark,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

signUpPopUp(BuildContext context) {
  bool agree = false;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.r)), //this right here
          child: Container(
            width: 450.w,
            height: 650.h,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                AppRoutes.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: AppColors.greenDark,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            text(context, "Welcome to Heilo!", 22.sp,
                                AppColors.greenDark),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: Column(
                      children: [
                        customInputField(context, "Name"),
                        customInputField(context, "Email"),
                        customInputField(context, "Phone Number"),
                        customInputField(context, "Password"),
                        customInputField(context, "Confirm Password"),
                        Row(
                          children: [
                            StatefulBuilder(builder: ((context, setState) {
                              return Material(
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: AppColors.greenDark,
                                  ),
                                  child: Checkbox(
                                    value: agree,
                                    onChanged: (value) {
                                      setState(() {
                                        agree = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                              );
                            })),
                            text(context, "I agree to the ", 12.sp,
                                Color(0xff444F55)),
                            text(context, "Terms and Conditions", 12.sp,
                                AppColors.greenDark),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                color: AppColors.greenDark,
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                              alignment: Alignment.center,
                              child: text(
                                  context, "REGISTER", 22.sp, Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

signUpPopUpMobile(BuildContext context) {
  bool agree = false;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.r)), //this right here
          child: Container(
            width: 450.w,
            height: 580.h,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                AppRoutes.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: AppColors.greenDark,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            text(context, "Welcome to Heilo!", 65.sp,
                                AppColors.greenDark),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: Column(
                      children: [
                        customInputField(context, "Name"),
                        customInputField(context, "Email"),
                        customInputField(context, "Phone Number"),
                        customInputField(context, "Password"),
                        customInputField(context, "Confirm Password"),
                        Row(
                          children: [
                            StatefulBuilder(builder: ((context, setState) {
                              return Material(
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: AppColors.greenDark,
                                  ),
                                  child: Checkbox(
                                    value: agree,
                                    onChanged: (value) {
                                      setState(() {
                                        agree = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                              );
                            })),
                            text(context, "I agree to the ", 50.sp,
                                Color(0xff444F55)),
                            text(context, "Terms and Conditions", 50.sp,
                                AppColors.greenDark),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30.h,
                              width: AppSizes.dynamicWidth(context, 0.2),
                              decoration: BoxDecoration(
                                color: AppColors.greenDark,
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                              alignment: Alignment.center,
                              child: text(
                                  context, "REGISTER", 65.sp, Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
