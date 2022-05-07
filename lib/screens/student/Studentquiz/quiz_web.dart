// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/form_fields.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../../utils/config.dart';
import '../onDemand/onDemand_web.dart';

class QuizzWeb extends StatefulWidget {
  const QuizzWeb({Key? key}) : super(key: key);

  @override
  State<QuizzWeb> createState() => _QuizzWebState();
}

class _QuizzWebState extends State<QuizzWeb> {
  bool state1 = true;
  bool state2 = true;
  bool state3 = false;
  bool radiobutt = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 1),
      height: AppSizes.dynamicHeight(context, 1),
      decoration: BoxDecoration(
        color: AppColors.customWhite,
        borderRadius: BorderRadius.circular(30.r),
      ),
      padding: EdgeInsets.all(20.r),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.notifications,
                  color: AppColors.greenDark,
                ),
                AppSizes.widthBox(context, .01),
                CircleAvatar(
                  radius: 32.r,
                  backgroundColor: AppColors.green,
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundImage: const AssetImage(
                      "assets/png/wp2398385 1.png",
                    ),
                  ),
                ),
              ],
            ),
            AppSizes.heightBox(context, .01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                state1
                    ? Flexible(
                        child: Container(
                          // width: 760.w,
                          // height: 720.h,
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  text(
                                    context,
                                    "TEST YOURSELF \n KNOW YOURSELF",
                                    40.sp,
                                    AppColors.greenDark,
                                    bold: FontWeight.w900,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 65.h,
                                    width: 510.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40.w),
                                      border: Border.all(
                                          color: AppColors.lightgreyborder,
                                          width: 4),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 300.w,
                                          padding: EdgeInsets.only(
                                            left: 50.w,
                                            bottom: 10.h,
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Enter Your Subject',
                                                hintStyle: TextStyle(
                                                  color: AppColors.greyText,
                                                )),
                                          ),
                                        ),
                                        Container(
                                            width: 182.w,
                                            height: 65.h,
                                            decoration: BoxDecoration(
                                                color: AppColors.greenDark,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(0),
                                                  topRight:
                                                      Radius.circular(40.r),
                                                  bottomRight:
                                                      Radius.circular(40.r),
                                                  bottomLeft:
                                                      Radius.circular(40.r),
                                                )),
                                            child: Center(
                                              child: text(context, "SEARCH",
                                                  22.sp, AppColors.customWhite),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Wrap(
                                spacing: 50.w,
                                runSpacing: 20.h,
                                children: [
                                  courseCard(context),
                                  courseCard(context),
                                  courseCard(context),
                                  courseCard(context),
                                  courseCard(context),
                                  courseCard(context),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : chapterTestWidget(),
                Container(
                  width: 526.w,
                  height: 740.h,
                  decoration: BoxDecoration(
                    color: AppColors.customGrey,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 25.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                        context,
                        "Notifications",
                        18.sp,
                        AppColors.customGreen,
                      ),
                      SizedBox(
                        width: 460.w,
                        height: 660.h,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, i) {
                            return notificationCardforall(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget radioWidget() {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
        left: 120.w,
      ),
      child: Row(
        children: [
          Radio(
            value: radiobutt,
            groupValue: radiobutt,
            onChanged: (bool? value) {
              setState(
                () {
                  radiobutt = value!;
                },
              );
            },
          ),
          Container(
              padding: EdgeInsets.all(10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Color(0xff01B489))),
              child: text(
                  context,
                  'It is a long established fact that a reader will be distracted by the readable ',
                  14,
                  Color(0xff000000)))
        ],
      ),
    );
  }

  Widget chapteraInnerWidget1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 110.w,
          height: 45.h,
          // padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Color(0xffDFDFDF),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.center,
            child:
                text(context, 'Question 1', 12, Color(0xff000000), bold: false),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          padding: EdgeInsets.all(30.h),
          decoration: BoxDecoration(
            color: Color(0xff01B489),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.center,
            child: text(
                context,
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not?',
                20.sp,
                Color(0xffFFFFFF),
                bold: true,
                maxLines: 6),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        radioWidget(),
        radioWidget(),
        radioWidget(),
        radioWidget(),
        SizedBox(
          height: 50.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  state2 = false;
                });
              },
              child: Container(
                height: 50.h,
                width: 130,
                padding: EdgeInsets.all(10.h),
                // alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: Color(0xff01B489),
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Next',
                    style: TextStyle(color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget chapteraInnerWidget2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // width: 110.w,
          // height: 45.h,
          margin: EdgeInsets.only(left: 70.w),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(context, 'Congratulations!!', 28.sp, Color(0xff01B489),
                  bold: true),
              text(context, 'You have successfully completed the exam.', 14.sp,
                  Color(0xff000000),
                  bold: false),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          padding: EdgeInsets.all(30.h),
          decoration: BoxDecoration(
            color: Color(0xff01B489),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50.h,
                width: 170,
                padding: EdgeInsets.all(10.h),
                margin: EdgeInsets.only(bottom: 18.h),
                // alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(25)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Next',
                    style: TextStyle(color: Color(0xffA8A8A8)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: text(
                    context,
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not?',
                    20.sp,
                    Color(0xffFFFFFF),
                    bold: true,
                    maxLines: 6),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        InkWell(
          onTap: () {
            setState(() {
              state3 = true;
            });
          },
          child: Container(
            height: 50.h,
            width: 130,
            padding: EdgeInsets.all(10.h),
            // alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff01B489), width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'View Solution',
                style: TextStyle(color: Color(0xff535353)),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        // chapteraInnerWidget3(),
        state3 ? chapteraInnerWidget3() : SizedBox(),
        SizedBox(
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  // state2 = false;
                });
              },
              child: Container(
                height: 50.h,
                width: 130,
                padding: EdgeInsets.all(10.h),
                // alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: Color(0xff01B489),
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Finish',
                    style: TextStyle(color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget chapteraInnerWidget3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        Container(
          padding: EdgeInsets.all(30.h),
          decoration: BoxDecoration(
            color: Color(0xff01B489),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.center,
            child: text(
                context,
                'Question: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not?',
                20.sp,
                Color(0xffFFFFFF),
                bold: false,
                maxLines: 6),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            left: 120.w,
          ),
          child: Row(
            children: [
              text(context, 'Correct Answer:          ', 14.sp,
                  Color(0xff000000)),
              Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Color(0xff01B489))),
                  child: text(
                      context,
                      'It is a long established fact that a reader will be distracted by the readable ',
                      14.sp,
                      Color(0xff000000),
                      bold: false)),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            color: Color(0xff01B489),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 240.h,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.h,
                      width: 130.w,
                      // padding: EdgeInsets.all(10.h),
                      // alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Explanations:',
                          style: TextStyle(color: Color(0xff9B9B9B)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 548.w,
                        child: Wrap(
                          children: [
                            text(
                                context,
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theand scrambled it to make a type specimen book. It has survived not? ',
                                20.sp,
                                Color(0xffFFFFFF),
                                bold: false,
                                maxLines: 5),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 548.w,
                        child: Wrap(
                          children: [
                            text(
                                context,
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been theand scrambled it to make a type specimen book. It has survived not? ',
                                20.sp,
                                Color(0xffFFFFFF),
                                bold: false,
                                maxLines: 5),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 276.h,
                width: 346.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget courseCard(context) {
    return InkWell(
      onTap: () {
        setState(() {
          state1 = false;
        });
      },
      child: Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(
          color: AppColors.lightgreyborder,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // margin: EdgeInsets.symmetric(
              //   vertical: 10.h,
              // ),
              width: 265.w,
              height: 185.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                image: DecorationImage(
                  image: AssetImage("assets/png/bluebook.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(""),
            ),
            Container(
              width: 250.w,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/png/bookicon.png',
                    height: 30.w,
                    width: 30.h,
                  ),
                  text(context, "Chapter-1 : Speed", 16.sp, Colors.black),
                ],
              ),
            ),
            Container(
              width: 250.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(context, "Question: 25", 16.sp, Color(0xff6F6F6F)),
                  text(context, "Time : 25 minutes", 16.sp, Color(0xff6F6F6F)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chapterTestWidget() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 1020.w,
        // height: 300.h,
        padding: EdgeInsets.only(left: 20.w, right: 10.w),
        // decoration: BoxDecoration(
        //   color: AppColors.lightgreyborder,
        //   borderRadius: BorderRadius.circular(30.r),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(context, 'PHYSICS', 30.sp, Color(0xff01B489), bold: true),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(context, 'CHAPTER - 1: SPEED', 30.sp, Color(0xff01B489),
                    bold: false),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff01B489),
                            borderRadius: BorderRadius.circular(10)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '00',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 5.h),
                        decoration: BoxDecoration(
                            color: Color(0xff01B489),
                            borderRadius: BorderRadius.circular(10)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '25',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 5.h),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff01B489),
                              width: 2,
                            ),
                            // color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '66',
                              style: TextStyle(color: Color(0xff01B489)),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            text(
                context,
                'NOTE: As you proceed further, the questions get tricker, but you can crack it, if you try hard. Godspeed!',
                14.sp,
                Color(0xffA8A8A8),
                bold: true),
            SizedBox(
              height: 30.h,
            ),
            Divider(
              thickness: 4,
              color: Color(0xffA8A8A8),
            ),
            SizedBox(
              height: 30.h,
            ),
            state2 ? chapteraInnerWidget1() : chapteraInnerWidget2(),
          ],
        ),
      ),
    );
  }
}

// Widget notificationCard(context) {
//   return Container(
//     width: 476.w,
//     height: 76.h,
//     decoration: BoxDecoration(
//       color: Color(0xff1BE59D),
//       borderRadius: BorderRadius.circular(30.r),
//     ),
//     padding: EdgeInsets.symmetric(
//       horizontal: 18.w,
//       vertical: 10.h,
//     ),
//     margin: EdgeInsets.only(bottom: 10.h),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         CircleAvatar(
//           radius: 26.r,
//           backgroundImage: const AssetImage(
//             "assets/png/wp2398385 1.png",
//           ),
//         ),
//         SizedBox(
//           width: 20.w,
//         ),
//         Expanded(
//           child: text(
//             context,
//             "You have received a tution request from Salsabil Murshed.",
//             16.sp,
//             AppColors.customBlack,
//           ),
//         ),
//       ],
//     ),
//   );
// }
