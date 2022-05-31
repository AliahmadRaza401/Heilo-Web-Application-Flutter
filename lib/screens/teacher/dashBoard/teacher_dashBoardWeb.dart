// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/main.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/notification_container.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:heilo/widgets/top_iconavatar.dart';

import '../../student/onDemand/onDemand_web.dart';

class TeacherDashBoaedWeb extends StatefulWidget {
  const TeacherDashBoaedWeb({Key? key}) : super(key: key);

  @override
  State<TeacherDashBoaedWeb> createState() => _TeacherDashBoaedWebState();
}

class _TeacherDashBoaedWebState extends State<TeacherDashBoaedWeb> {
  int SelectedCard = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
            width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 0.96),
        padding: EdgeInsets.all(AppSizes.dynamicWidth(context, 0.02)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: SingleChildScrollView(
    
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              topIconAvatar(context),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        SelectedCard = 1;
                      });
                    },
                    child: cardWidget(
                      'assets/png/g1.png',
                      "Upcoming Sessions",
                      "03",
                      SelectedCard == 1 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 1
                          ? Color(0xff5F5F5F)
                          : AppColors.customGrey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        SelectedCard = 2;
                      });
                    },
                    child: cardWidget(
                      'assets/png/g2.png',
                      "Tutions completed",
                      "03",
                      SelectedCard == 2 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 2
                          ? Color(0xff5F5F5F)
                          : AppColors.customGrey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        SelectedCard = 3;
                      });
                    },
                    child: cardWidget(
                      'assets/png/g3.png',
                      "Tution Request",
                      "03",
                      SelectedCard == 3 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 3
                          ? Color(0xff5F5F5F)
                          : AppColors.customGrey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        SelectedCard = 4;
                      });
                    },
                    child: cardWidget(
                      'assets/png/g4.png',
                      "Weekly Contribution",
                      "+20%",
                      SelectedCard == 4 ? 0xffFFFFFF : 0xff01B489,
                      SelectedCard == 4
                          ? Color(0xff5F5F5F)
                          : AppColors.customGrey,
                    ),
                  ),
                ],
              ),
              Container(
                // color: Colors.amber,
                margin: EdgeInsets.only(top: 60.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SelectedCard == 1
                        ? upComingCard()
                        : SelectedCard == 2
                            ? tutionsCard()
                            : SelectedCard == 3
                                ? tutionRequest()
                                : favoriteTutiCard(),
            dashBoardnotificationContainer(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget tutionInerWidget() {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Color(0xffC4C4C4))),
      padding: EdgeInsets.only(left: 10.w, top: 3.h, bottom: 3.h, right: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60.h,
            width: 50.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/png/wp2398385 1.png'),
                  fit: BoxFit.cover,
                )),
          ),
          text(
            context,
            'Ruhul Amin Tushar',
            16,
            AppColors.greenDark,
            bold: true,
          ),
          Container(
            height: 50.h,
            // width: 156.w,
            padding: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
            ),
            decoration: BoxDecoration(
                color: const Color(0xffB4F4DD),
                borderRadius: BorderRadius.circular(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Topic- Mathematics',
                  12,
                  AppColors.bblackText,
                  bold: false,
                ),
                SizedBox(
                  width: 15.w,
                ),
                text(
                  context,
                  '11-03-2022 (4pm- 6:30 pm)',
                  12,
                  AppColors.bblackText,
                  bold: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tutionRequestInnerWidget() {
    return Container(
      margin: EdgeInsets.only(left: 40.w, right: 40.w, top: 30.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26.r,
            backgroundImage: const AssetImage(
              "assets/png/wp2398385 1.png",
            ),
          ),
          Container(
            width: 30.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(context, 'Ruhul Tusar', 16.sp, Color(0xff444F55),
                  bold: true),
              Container(
                height: 6.w,
              ),
              text(context, 'Class- 10', 15.sp, Color(0xff444F55), bold: false)
            ],
          ),
          Container(
            width: 30.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(context, 'Date : 10-22 -2021   I   5:30 pm', 13.sp,
                  Color(0xff01B489),
                  bold: true),
              Container(
                height: 6.w,
              ),
              text(context, 'Polygons I Gerometry I Maths B', 15.sp,
                  Color(0xff444F55),
                  bold: false)
            ],
          ),
          Expanded(child: Container()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.cancel,
                color: Color(0xffD7443E),
                size: 25,
              ),
              const Icon(
                Icons.check_circle,
                color: Color(0xff3BB54A),
                size: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tutionRequest() {
    return Container(
     height: 490.h,
      width: 743.w,

      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),
      ),
   padding: EdgeInsets.only(bottom: 5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
           margin: EdgeInsets.only(left: 10.w, top: 10.h),
            alignment: Alignment.centerLeft,
            width: 300.w,
            // decoration: BoxDecoration(
            //     color: Colors.white, borderRadius: BorderRadius.circular(21)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tution Request',
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
       height: AppSizes.dynamicHeight(context, 0.48),
            child: Column(
              children: [
                tutionRequestInnerWidget(),
                Container(
                  margin: EdgeInsets.only(
                    left: 40.w,
                    right: 40.w,
                  ),
                  child: const Divider(
                    thickness: 1.5,
                    color: Color(0xffE9E9E9),
                  ),
                ),
                tutionRequestInnerWidget(),
                Container(
                  margin: EdgeInsets.only(
                    left: 40.w,
                    right: 40.w,
                  ),
                  child: const Divider(
                    thickness: 1.5,
                    color: Color(0xffE9E9E9),
                  ),
                ),
                tutionRequestInnerWidget(),
               
               
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget upComingCard() {
    return Container(
      height: 490.h,
      width: 743.w,
      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),
      ),
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 300.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(21)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Upcoming Sessions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: AppSizes.dynamicHeight(context, 0.45),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  upcomingsessionData(),
                   SizedBox(
                    height: 15.h,
                  ),
                  upcomingsessionData(),
                   SizedBox(
                    height: 15.h,
                  ),
                  upcomingsessionData(),
                   SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tutionsCard() {
    return Container(
     height: 490.h,
      width: 743.w,
      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),
      ),
       padding:
          EdgeInsets.only(bottom: 20.h, top: 20.h, left: 10.w, right: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                // margin: EdgeInsets.all(10.w),
                height: AppSizes.dynamicHeight(context, 0.03),
                width: AppSizes.dynamicWidth(context, 0.03),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/png/trophy.png',
                  ),
                  fit: BoxFit.contain,
                )),
              ),
              Text(
                'Tutions Completed',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
                 height: AppSizes.dynamicHeight(context,  0.4),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  tutionInerWidget(),
                  tutionInerWidget(),
                   tutionInerWidget(),
                  tutionInerWidget(),
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget quizCard() {
    return Container(
      height: 673.h,
      width: 743.w,
      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),
      ),
      padding: EdgeInsets.only(bottom: 20.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: 300.w,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(21)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Quiz Appeared',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget favoriteTutiCard() {
    return Container(
     height: 490.h,
      width: 743.w,
      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),
      ),
      padding: EdgeInsets.only(bottom: 20.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                   height: AppSizes.dynamicHeight(context, 0.06),
                // width: AppSizes.dynamicWidth(context, 0.05),
              alignment: Alignment.centerLeft,
              width: 300.w,
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(21)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Weekly Contribution',
                    style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
            Padding(

              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: double.infinity,
                // height: AppSizes.dynamicHeight(context, .55),
                    height: AppSizes.dynamicHeight(context,  0.4),
                child: barChart(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget upcomingsessionData() {
    return Container(
      // margin: EdgeInsets.only(
      //   left: 15.w,
      //   top: 5.h,
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
           width: 170.w,
            height: 30,
            margin: EdgeInsets.only(
              left: 63.w,
              top: 20.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 0.5,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                '27th July, 2021',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 142.w,
              top: 5.h,
            ),
            child: Row(
              children: [
                Container(
                  height: 80.h,
                  width: 93.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/png/wp2398385 1.png",
                        ),
                      )),
                ),
                // CircleAvatar(
                //   radius: 32.r,
                //   backgroundColor: AppColors.green,
                //   child: CircleAvatar(
                //     radius: 28.r,
                //     backgroundImage: const AssetImage(
                //       "assets/png/wp2398385 1.png",
                //     ),
                //   ),
                // ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Ruhul Tusar',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          // padding: EdgeInsets.all(5),
                          height: 26.h,
                          width: 83.w,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                width: 1,
                                color: Colors.red,
                              )),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'ID 1234',
                              style: TextStyle(
                                color: Color(0xff444F55),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Topic- ',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                        ),
                        Text(
                          'Polygons I Gerometry I Maths B',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w300,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Time- 4:30-5.30 pm',
                      style: TextStyle(
                        color: Color(0xff1BE59D),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardWidget(
    image,
    title,
    title1,
    textcolor,
    bgColor,
  ) {
    return Container(
        height: 177.h,
        width: 325.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 1,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              bottom: -13,
              left: -12,
              child:
                  // Image.asset(image),
                  Container(
                height: 177.h,
                width: 325.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 10.w,
                top: 10.h,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 23.w, top: 13.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Color(textcolor),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 23.w, top: 13.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        title1,
                        style: TextStyle(
                          color: Color(textcolor),
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget notificationCard(context) {
  return Container(
    width: 476.w,
    height: 76.h,
    decoration: BoxDecoration(
      color: const Color(0xff1BE59D),
      borderRadius: BorderRadius.circular(30.r),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 18.w,
      vertical: 10.h,
    ),
    margin: EdgeInsets.only(bottom: 10.h),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 26.r,
          backgroundImage: const AssetImage(
            "assets/png/wp2398385 1.png",
          ),
        ),
        SizedBox(width: 15.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'You have received a tution request from \nSalsabil Murshed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
