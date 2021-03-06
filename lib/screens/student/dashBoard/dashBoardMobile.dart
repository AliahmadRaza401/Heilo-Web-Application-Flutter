import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../Main_SideMenu/student_sidemenu_mobile.dart';

class DashBoardMobile extends StatefulWidget {
  const DashBoardMobile({Key? key}) : super(key: key);

  @override
  State<DashBoardMobile> createState() => _DashBoardMobileState();
}

class _DashBoardMobileState extends State<DashBoardMobile> {
  int selectedcard = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: studentScafoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {
                studentScafoldKey.currentState!.openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.primaryColor,
              child: Image.asset(
                'assets/png/wp2398385 1.png',
                height: AppSizes.dynamicHeight(context, 0.07),
                width: AppSizes.dynamicWidth(context, 0.07),
              ),
            ),
          ],
        ),
      ),
      drawer: StudentDrawer(),
      body: Container(
        width: AppSizes.dynamicWidth(context, 1),
        // height: AppSizes.dynamicHeight(context, 1),
        padding: EdgeInsets.only(
          left: 80.w,
          right: 80.w,
          top: 10.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppSizes.dynamicWidth(context, 1),
              height: AppSizes.dynamicHeight(context, 0.2),
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              // color: Colors.yellow,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            selectedcard = 1;
                          });
                        },
                        child: cardWidget1(
                          'assets/png/g1.png',
                          'Upcoming Sessions',
                          selectedcard == 1 ? 0xffFFFFFF : 0xff000000,
                          selectedcard == 1
                              ? Color(0xff5F5F5F)
                              : AppColors.customGrey,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            selectedcard = 2;
                          });
                        },
                        child: cardWidget1(
                          'assets/png/g2.png',
                          'Tutions completed',
                          selectedcard == 2 ? 0xffFFFFFF : 0xff000000,
                          selectedcard == 2
                              ? Color(0xff5F5F5F)
                              : AppColors.customGrey,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            selectedcard = 3;
                          });
                        },
                        child: cardWidget1(
                          'assets/png/g3.png',
                          'Quiz Appeared',
                          selectedcard == 3 ? 0xffFFFFFF : 0xff000000,
                          selectedcard == 3
                              ? Color(0xff5F5F5F)
                              : AppColors.customGrey,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            selectedcard = 4;
                          });
                        },
                        child: cardWidget1(
                          'assets/png/g4.png',
                          "Favourite Tutors",
                          selectedcard == 4 ? 0xffFFFFFF : 0xff000000,
                          selectedcard == 4
                              ? Color(0xff5F5F5F)
                              : AppColors.customGrey,
                        )),
                  ]),
            ),
            SizedBox(
              height: 10.h,
            ),
            selectedcard == 1
                ? upcommingMainSession()
                : selectedcard == 2
                    ? tutionsCompleteCard()
                    : selectedcard == 3
                        ? quizCard()
                        : favoriteTutiCard(),
          ],
        ),
      ),
    );
  }

  Widget cardWidget1(
    image,
    title,
    textcolor,
    bgColor,
  ) {
    return Container(
        height: AppSizes.dynamicHeight(context, 0.2),
        width: AppSizes.dynamicWidth(context, 0.8),
        margin: EdgeInsets.only(left: AppSizes.dynamicWidth(context, 0.03)),
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
              bottom: -23,
              left: -13,
              child:
                  // Image.asset(image),
                  Container(
                height: AppSizes.dynamicHeight(context, 0.25),
                width: AppSizes.dynamicWidth(context, 0.8),
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
                right: 40.w,
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
                          fontSize: AppSizes.dynamicWidth(context, 0.045),
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
                          fontSize: AppSizes.dynamicWidth(context, 0.05),
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
            width: AppSizes.dynamicWidth(context, 0.3),
            height: AppSizes.dynamicHeight(context, 0.04),
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
                          width: AppSizes.dynamicWidth(context, 0.11),
                        ),
                        Container(
                          // padding: EdgeInsets.all(5),
                          height: AppSizes.dynamicHeight(context, 0.03),
                          width: AppSizes.dynamicWidth(context, 0.2),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
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

  Widget upcommingMainSession() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffF8F8F8),
      ),
      // padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // alignment: Alignment.centerLeft,
            height: 40.h,
            width: AppSizes.dynamicHeight(context, 0.24),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(21)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Upcoming Sessions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 90.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 600.h,
            child: ListView(
              shrinkWrap: true,
              children: [
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
            // child: SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       upcomingsessionData(),
            //       SizedBox(
            //         height: 20.h,
            //       ),
            //       upcomingsessionData(),
            //       SizedBox(
            //         height: 20.h,
            //       ),
            //       upcomingsessionData(),
            //       SizedBox(
            //         height: 20.h,
            //       ),
            //       upcomingsessionData(),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }

  Widget quizCard() {
    return Container(
      // height: AppSizes.dynamicHeight(context, 0.28),
      // width: 743.w,
      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),
      ),
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
              height: 600.h,
              child: ListView(
                shrinkWrap: true,
                children: [
                   courseCard(context),
              //       SizedBox(
              //         height: 19.h,
              //       ),
                    courseCard(context),
                    courseCard(context),
                    courseCard(context),
                    courseCard(context),

                ],
              )
              // child: SingleChildScrollView(
              //   child: Column(
              //     children: [
              //       courseCard(context),
              //       SizedBox(
              //         height: 19.h,
              //       ),
              //       courseCard(context),
              //     ],
              //   ),
              // ),

              ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }

  Widget favouriteInerWidet() {
    return Container(
      margin: EdgeInsets.only(
          left: AppSizes.dynamicWidth(context, 0.02),
          right: AppSizes.dynamicWidth(context, 0.02),
          top: AppSizes.dynamicHeight(context, 0.02)),
      // padding: EdgeInsets.only(
      //     top: AppSizes.dynamicHeight(context, 0.02),
      //     bottom: AppSizes.dynamicHeight(context, 0.02)),
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
            AppSizes.dynamicWidth(context, 0.04),
            AppColors.bblackText,
            bold: false,
          ),
          RichText(
              text: TextSpan(children: [
            const WidgetSpan(
                child: Icon(
              Icons.star,
              color: Color(0xffFEDB41),
            )),
            WidgetSpan(
              child: text(
                context,
                '4.5',
                AppSizes.dynamicWidth(context, 0.04),
                AppColors.bblackText,
                bold: false,
              ),
            ),
          ])),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                context,
                'Topic- Mathematics',
                AppSizes.dynamicWidth(context, 0.04),
                AppColors.bblackText,
                bold: false,
              ),
              text(
                context,
                'BUET',
                AppSizes.dynamicWidth(context, 0.04),
                AppColors.bblackText,
                bold: false,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget favoriteTutiCard() {
    return Container(
      // height: 573.h,
      // width: 743.w,
      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),
      ),
      padding: EdgeInsets.only(bottom: AppSizes.dynamicWidth(context, 0.01)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.dynamicWidth(context, 0.02),
            ),
            child: Row(
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
          ),
          Container(
            height: 600.h,
            child: ListView(
              shrinkWrap: true,
              children: [
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
                favouriteInerWidet(),
                favouriteInerWidet(),
                favouriteInerWidet(),
              ],
            ),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          //   child: Column(
          //     children: [

          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget tutionsCompleteCard() {
    return Container(
      // height: 573.h,
      // width: 743.w,
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
                  margin: EdgeInsets.only(
                      right: AppSizes.dynamicWidth(context, 0.02)),
                  height: AppSizes.dynamicHeight(context, 0.09),
                  width: AppSizes.dynamicWidth(context, 0.09),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/png/trophy.png'),
                    fit: BoxFit.contain,
                  )),
                ),
                Text(
                  'Tutions Completed',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 90.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              height: 560.h,
              child: ListView(
                shrinkWrap: true,
                children: [
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
              // child: SingleChildScrollView(
              //     child: Column(
              //   children: [
              //     tutionInerWidget(),
              //     tutionInerWidget(),
              //     tutionInerWidget(),
              //     tutionInerWidget(),
              //     tutionInerWidget(),
              //     tutionInerWidget(),
              //     tutionInerWidget(),
              //   ],
              // )),
            )
          ],
        ),
      ),
    );
  }

  Widget tutionInerWidget() {
    return Container(
      // padding: EdgeInsets.all(AppSizes.dynamicHeight(context, 0.01)),
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: const Color(0xffC4C4C4),
        ),
      ),
      // padding: EdgeInsets.only(left: 10.w, top: 3.h, bottom: 3.h, right: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 5.w,
          ),
          // Container(
          //   height: 60.h,
          //   width: 50.w,
          //   decoration: const BoxDecoration(
          //       shape: BoxShape.circle,
          //       image: DecorationImage(
          //         image: AssetImage('assets/png/wp2398385 1.png'),
          //         fit: BoxFit.cover,
          //       )),
          // ),
          Container(
            height: AppSizes.dynamicHeight(context, 0.07),
            width: AppSizes.dynamicWidth(context, 0.12),
            decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/png/wp2398385 1.png"),
                  fit: BoxFit.cover,
                )),
          ),
          Wrap(
            children: [
              text(
                context,
                'Ruhul Amin Tushar',
                AppSizes.dynamicWidth(context, 0.03),
                AppColors.greenDark,
                bold: true,
              ),
            ],
          ),
          Container(
            height: AppSizes.dynamicHeight(context, 0.06),
            // width: 156.w,
            padding: EdgeInsets.only(
              // top: AppSizes.dynamicHeight(context, 0.01),
              left: AppSizes.dynamicWidth(context, 0.01),
              right: AppSizes.dynamicWidth(context, 0.01),
            ),
            decoration: BoxDecoration(
                color: const Color(0xffB4F4DD),
                borderRadius: BorderRadius.circular(80.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    text(
                      context,
                      'Topic- Mathematics',
                      65.sp,
                      AppColors.bblackText,
                      bold: false,
                    ),
                  ],
                ),
                // SizedBox(width: AppSizes.dynamicHeight(context, 0.02)),
                Wrap(
                  children: [
                    text(
                      context,
                      '11-03-2022 (4pm- 6:30 pm)',
                      65.sp,
                      AppColors.bblackText,
                      bold: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
        ],
      ),
    );
  }

  Widget notificationMain() {
    return Container(
      margin: EdgeInsets.only(top: AppSizes.dynamicHeight(context, 0.1)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xffF8F8F8),
        ),
        padding: EdgeInsets.only(
          left: AppSizes.dynamicWidth(context, 0.04),
          right: AppSizes.dynamicWidth(context, 0.04),
          top: AppSizes.dynamicHeight(context, 0.01),
        ),
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
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
          ],
        ),
      ),
    );
  }

  Widget notificationCard() {
    return Container(
      height: AppSizes.dynamicHeight(context, 0.09),
      decoration: BoxDecoration(
        color: Color(0xff1BE59D),
        // color: Colors.black,
        borderRadius: BorderRadius.circular(120.r),
      ),
      margin: EdgeInsets.only(bottom: AppSizes.dynamicHeight(context, 0.04)),
      child: Row(
        children: [
          SizedBox(width: AppSizes.dynamicWidth(context, 0.02)),
          Container(
            height: AppSizes.dynamicHeight(context, 0.07),
            width: AppSizes.dynamicWidth(context, 0.15),
            decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/png/wp2398385 1.png"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(width: AppSizes.dynamicWidth(context, 0.04)),
          Text(
            'You have received a tution \nrequest from Salsabil Murshed ',
            maxLines: 4,
            style: TextStyle(
              color: Colors.black,
              fontSize: 65.sp,
            ),
          ),
        ],
      ),
    );
  }
}

Widget courseCard(context) {
  return Container(
    // width: 300.w,
    // padding: EdgeInsets.all(AppSizes.dynamicHeight(context, 0.01)),
margin: EdgeInsets.only(bottom: 20.h),
    height: AppSizes.dynamicHeight(context, 0.30),
    decoration: BoxDecoration(
      color: AppColors.lightgreyborder,
      borderRadius: BorderRadius.circular(130.r),
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(AppSizes.dynamicWidth(context, 0.02)),
              width: AppSizes.dynamicWidth(context, 0.6),
              height: AppSizes.dynamicHeight(context, 0.14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(130.r),
                image: const DecorationImage(
                  image: AssetImage("assets/png/bluebook.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(""),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context, "Total Mark", 76.sp, Color(0xff6F6F6F)),
                text(context, "23", 200.sp, Color(0xff000000), bold: true),
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(
            top: AppSizes.dynamicWidth(context, 0.01),
            left: AppSizes.dynamicWidth(context, 0.03),
            right: AppSizes.dynamicWidth(context, 0.03),
            bottom: AppSizes.dynamicWidth(context, 0.01),
          ),
          padding: EdgeInsets.all(AppSizes.dynamicWidth(context, 0.01)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.r),
              color: Color(0xffFFFFFF)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // width: 250.w,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/png/bookicon.png',
                      height: AppSizes.dynamicHeight(context, 0.04),
                      width: AppSizes.dynamicWidth(context, 0.06),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    text(context, "Chapter-1 : Speed", 90.sp, Colors.black),
                  ],
                ),
              ),
              Container(
                // width: 250.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(context, "Question: 25", 78.sp, Color(0xff6F6F6F)),
                    text(
                        context, "Time : 25 minutes", 78.sp, Color(0xff6F6F6F)),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: AppSizes.dynamicWidth(context, 0.01)),
                // width: 250.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(context, "27th July, 2021", 78.sp, Color(0xff444F55)),
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
