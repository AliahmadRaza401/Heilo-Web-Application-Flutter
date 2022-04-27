import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/main.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';

class DashBoaedWeb extends StatefulWidget {
  const DashBoaedWeb({Key? key}) : super(key: key);

  @override
  State<DashBoaedWeb> createState() => _DashBoaedWebState();
}

class _DashBoaedWebState extends State<DashBoaedWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: AppSizes.dynamicWidth(context, 1),
          height: AppSizes.dynamicHeight(context, 1),
          padding: EdgeInsets.only(
            left: 30.w,
            right: 30.w,
            top: 20.h,
            bottom: 20.h,
          ),
          decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardWidget(),
                  cardWidget(),
                  cardWidget(),
                  cardWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // height: 600.h,

                    width: 550.w,
                    margin: EdgeInsets.only(top: 40.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.customGrey,
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Upcoming Sessions',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          upcomingsessionData(),
                          SizedBox(
                            height: 20.h,
                          ),
                          upcomingsessionData(),
                          SizedBox(
                            height: 20.h,
                          ),
                          upcomingsessionData(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 526.w,
                    // height: 760.h,
                    decoration: BoxDecoration(
                      color: AppColors.customGrey,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    padding: EdgeInsets.only(
                      left: 45.w,
                      right: 45.w,
                      top: 20.h,
                      // bottom: 5.h,
                    ),
                    // padding: EdgeInsets.symmetric(
                    //   vertical: 5.h,
                    //   horizontal: 25.w,
                    // ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: const Text(
                            "Notifications",
                            style: TextStyle(
                              color: AppColors.customGreen,
                              fontSize: 18.0,
                            ),
                            // 18.sp,
                            // AppColors.customGreen,
                          ),
                        ),
                        notificationCard(context),
                        notificationCard(context),
                        notificationCard(context),
                        notificationCard(context),
                        // SizedBox(
                        //   width: 460.w,
                        //   height: 670.h,
                        //   child: ListView.builder(
                        //     itemCount: 5,
                        //     itemBuilder: (context, i) {
                        //       return notificationCard(context);
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget upcomingsessionData() {
    return Container(
      margin: EdgeInsets.only(
        left: 15.w,
        top: 5.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 170.w,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: .5,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(25)),
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
              left: 40.w,
              top: 5.h,
            ),
            child: Row(
              children: [
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
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Ruhul Tusar',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 1,
                                color: Colors.red,
                              )),
                          child: Text(
                            'Ruhul Tusar',
                            style: TextStyle(
                              color: Color(0xff444F55),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Topic- Polygons I Gerometry I Maths B',
                      style: TextStyle(
                        color: Color(0xff444F55),
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      'Time- 4:30-5.30 pm',
                      style: TextStyle(
                        color: Color(0xff1BE59D),
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
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

  Widget cardWidget() {
    return Container(
      height: 180.h,
      width: 300.w,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage('assets/png/card1.png'),
            fit: BoxFit.cover,
          )),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.w, top: 10.h),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Upcoming Sessions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.w, top: 10.h),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                '03',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget notificationCard(context) {
  return Container(
    width: 476.w,
    height: 76.h,
    decoration: BoxDecoration(
      color: Color(0xff1BE59D),
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
        SizedBox(width:15.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
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
