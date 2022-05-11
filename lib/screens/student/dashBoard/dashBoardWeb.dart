// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/main.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/notification_container.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../onDemand/onDemand_web.dart';

class DashBoaedWeb extends StatefulWidget {
  const DashBoaedWeb({Key? key}) : super(key: key);

  @override
  State<DashBoaedWeb> createState() => _DashBoaedWebState();
}

class _DashBoaedWebState extends State<DashBoaedWeb> {
  int SelectedCard = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          width: AppSizes.dynamicWidth(context, 1),
          // height: AppSizes.dynamicHeight(context, 1),
          padding: EdgeInsets.only(
            left: 84.w,
            right: 84.w,
            top: 0.h,
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
                      SelectedCard == 1 ? 0xffFFFFFF : 0xff000000,
                      SelectedCard == 1 ? Color(0xff5F5F5F) : AppColors.customGrey,
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
                      SelectedCard == 2 ? Color(0xff5F5F5F) : AppColors.customGrey,
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
                      SelectedCard == 3 ? Color(0xff5F5F5F) : AppColors.customGrey,
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
                      SelectedCard == 4 ? Color(0xff5F5F5F) : AppColors.customGrey,
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
                    // Container(
                    //   width: 700.w,
                    //   height: 578.h,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(30),
                    //     color: const Color(0xffF8F8F8),
                    //   ),
                    //   padding: EdgeInsets.only(
                    //     left: 60.w,
                    //     // right: 45.w,
                    //     top: 17.h,
                    //     // bottom: 5.h,
                    //   ),
                    //   // padding: EdgeInsets.symmetric(
                    //   //   vertical: 5.h,
                    //   //   horizontal: 25.w,
                    //   // ),
                    //   child: SingleChildScrollView(
                    //     scrollDirection: Axis.vertical,
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         text(
                    //           context,
                    //           "Notifications",
                    //           18.0,
                    //           AppColors.customGreen,
                    //           bold: false,
                    //         ),
                    //         SizedBox(
                    //           height: 20.h,
                    //         ),
                    //         notificationCardforall(context),
                    //         notificationCardforall(context),
                    //         notificationCardforall(context),
                    //         notificationCardforall(context),
                    //         notificationCardforall(context),
                    //         notificationCardforall(context),
                    //         notificationCardforall(context),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                 
                    notificationContainer(context),

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
      padding:
          EdgeInsets.only(bottom: 20.h, top: 20.h, left: 10.w, right: 10.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: AppSizes.dynamicHeight(context, 0.06),
                  width: AppSizes.dynamicWidth(context, 0.05),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/png/trophy.png'),
                    fit: BoxFit.contain,
                  )),
                ),
                const Text(
                  'Tutions Completed',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
            tutionInerWidget(),
          ],
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
            16.sp,
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
                color: Color(0xffB4F4DD),
                borderRadius: BorderRadius.circular(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  context,
                  'Topic- Mathematics',
                  12.sp,
                  AppColors.bblackText,
                  bold: false,
                ),
                SizedBox(
                  width: 15.w,
                ),
                text(
                  context,
                  '11-03-2022 (4pm- 6:30 pm)',
                  18.sp,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w, top: 10.h),
              child: const Align(
                alignment: Alignment.centerLeft,
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
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              spacing: 50.w,
              runSpacing: 20.h,
              children: [
                courseCard(context),
                courseCard(context),
                courseCard(context),
                courseCard(context),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget courseCard(context) {
    return Container(
      width: 300.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColors.lightgreyborder,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // margin: EdgeInsets.symmetric(
                //   vertical: 10.h,
                // ),
                width: 150.w,
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/png/bluebook.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(""),
              ),
              Column(
                children: [
                  text(context, "Total Mark", 15.sp, Color(0xff6F6F6F)),
                  text(context, "23", 48.sp, Color(0xff000000), bold: true),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 6.h,
              horizontal: 20.w,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFFFFFF)),
            child: Column(
              children: [
                Container(
                  width: 250.w,
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/png/bookicon.png',
                        height: 30.w,
                        width: 30.h,
                      ),
                      SizedBox(
                        width: 10.w,
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
                      text(context, "Time : 25 minutes", 16.sp,
                          Color(0xff6F6F6F)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 250.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                          context, "27th July, 2021", 16.sp, Color(0xff444F55)),
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
            Row(
              children: [
                Container(
                  height: AppSizes.dynamicHeight(context, 0.06),
                  width: AppSizes.dynamicWidth(context, 0.05),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/png/favouriteIcon.png'),
                    fit: BoxFit.contain,
                  )),
                ),
                const Text(
                  'Favourite Tutors',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
            favouriteInerWidet(),
          ],
        ),
      ),
    );
  }

  Widget favouriteInerWidet() {
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: AppColors.customGrey,
          ),
          // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(
            context,
            '1. Adnan Ali',
            18,
            AppColors.bblackText,
            bold: false,
          ),
          RichText(
              text: TextSpan(children: [
            WidgetSpan(
                child: Icon(
              Icons.star,
              color: Color(0xffFEDB41),
            )),
            WidgetSpan(
              child: text(
                context,
                '4.5',
                18,
                AppColors.bblackText,
                bold: false,
              ),
            ),
          ])),
          text(
            context,
            'Topic- Mathematics',
            18,
            AppColors.bblackText,
            bold: false,
          ),
          text(
            context,
            'BUET',
            18,
            AppColors.bblackText,
            bold: false,
          ),
        ],
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
                        Text(
                          'Ruhul Tusar',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
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
                            fontSize: 13.0,
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
