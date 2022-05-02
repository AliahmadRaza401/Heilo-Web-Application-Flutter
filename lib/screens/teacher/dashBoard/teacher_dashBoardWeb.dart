// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/main.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

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
      body: SingleChildScrollView(
        child: Container(
          width: AppSizes.dynamicWidth(context, 1),
          height: AppSizes.dynamicHeight(context, 1),
          padding: EdgeInsets.only(
            left: 84.w,
            right: 84.w,
            top: 20.h,
            // bottom: 20.h,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      SelectedCard == 1 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 1 ? Color(0xff5F5F5F) : Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        SelectedCard = 2;
                      });
                    },
                    child: cardWidget(
                      'assets/png/g1.png',
                      "Tutions completed",
                      SelectedCard == 2 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 2 ? Color(0xff5F5F5F) : Colors.white,
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
                      "Quiz Appeared",
                      SelectedCard == 3 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 3 ? Color(0xff5F5F5F) : Colors.white,
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
                      "Favourite Tutors",
                      SelectedCard == 4 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 4 ? Color(0xff5F5F5F) : Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 67.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectedCard == 1
                        ? upComingCard()
                        : SelectedCard == 2
                            ? tutionsCard()
                            : SelectedCard == 3
                                ? quizCard()
                                : favoriteTutiCard(),
                    Container(
                      width: 700.w,
                      height: 578.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffF8F8F8),
                      ),
                      padding: EdgeInsets.only(
                        left: 60.w,
                        // right: 45.w,
                        top: 17.h,
                        // bottom: 5.h,
                      ),
                      // padding: EdgeInsets.symmetric(
                      //   vertical: 5.h,
                      //   horizontal: 25.w,
                      // ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                              context,
                              "Notifications",
                              18.0,
                              AppColors.customGreen,
                              bold: false,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget upComingCard() {
    return Container(
      height: 573.h,
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
                  'Upcoming Sessions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
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
            SizedBox(
              height: 20.h,
            ),
            upcomingsessionData(),
          ],
        ),
      ),
    );
  }

  Widget tutionsCard() {
    return Container(
      height: 573.h,
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
                  'Tutions Completed',
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

  Widget quizCard() {
    return Container(
      height: 573.h,
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
      height: 573.h,
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
                  'Favourite Tutors',
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
            height: 35,
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
                      children: const [
                        Text(
                          'Topic- ',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Polygons I Gerometry I Maths B',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w300,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Time- 4:30-5.30 pm',
                      style: TextStyle(
                        color: Color(0xff1BE59D),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
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
    textcolor,
    bgColor,
  ) {
    return Container(
        height: 177.h,
        width: 325.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
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
                    padding: EdgeInsets.only(right: 13.w, top: 13.h),
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
                    padding: EdgeInsets.only(right: 13.w, top: 13.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '03',
                        style: TextStyle(
                          color: Color(textcolor),
                          fontSize: 18,
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
