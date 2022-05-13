// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:heilo/widgets/top_iconavatar.dart';

class TeacherProfileWeb extends StatefulWidget {
  const TeacherProfileWeb({Key? key}) : super(key: key);

  @override
  State<TeacherProfileWeb> createState() => _TeacherProfileWebState();
}

class _TeacherProfileWebState extends State<TeacherProfileWeb> {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return Container(
      // height: AppSizes.dynamicHeight(context, 0.8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      padding: EdgeInsets.all(AppSizes.dynamicWidth(context, 0.02)),

      child: Column(
        children: [
          topIconAvatar(context),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: AppSizes.dynamicHeight(context, 0.8),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 526.w,
                        height: 860.h,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        padding: EdgeInsets.only(
                          left: 45.w,
                          right: 45.w,
                          // top: 50.h,
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: 800.h,
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                color: Color(0xffF1F1F1),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              padding: EdgeInsets.only(
                                top: 130.h,
                                left: 50.w,
                                right: 50.w,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(
                                    context,
                                    "Sakib Abdullah",
                                    18.0.sp,
                                    AppColors.greyText,
                                    bold: true,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  text(
                                    context,
                                    "Maple Leaf International School and College",
                                    14.0.sp,
                                    AppColors.greyText,
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),

                                  Align(
                                    alignment: Alignment.center,
                                    child: coloredButton(
                                        context, 'Hire Now', Color(0xff3DDEA5),
                                        width: 137.w,
                                        height: 35.h,
                                        fontSize: 14.sp,
                                        fontColor: Color(0xffffffff),
                                        function: () {},
                                        radious: 10.r),
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 38.h,
                                        width: 191.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffEBEBEB),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: text(
                                            context,
                                            "Hourly Rate",
                                            14.0.sp,
                                            Color(0xff616161),
                                            bold: true,
                                            // alignText: Alignment.center
                                          ),
                                        ),
                                      ),
                                      text(
                                        context,
                                        "150",
                                        18.0.sp,
                                        Color(0xff000000),
                                        bold: true,
                                        // alignText: Alignment.center
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 191.w,
                                        height: 38.h,
                                        // padding: const EdgeInsets.only(
                                        //   top: 5,
                                        //   bottom: 5,
                                        // ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffEBEBEB),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: text(
                                            context,
                                            "Tutors referred",
                                            14.0.sp,
                                            Color(0xff616161),
                                            bold: true,
                                            // alignText: Alignment.center
                                          ),
                                        ),
                                      ),
                                      text(
                                        context,
                                        "150",
                                        18.0.sp,
                                        Color(0xff000000),
                                        bold: true,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 191.w,
                                        height: 38.h,
                                        // padding: const EdgeInsets.only(
                                        //   top: 5,
                                        //   bottom: 5,
                                        // ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffEBEBEB),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: text(
                                            context,
                                            "Tutors Completed",
                                            14.0.sp,
                                            Color(0xff616161),
                                            bold: true,
                                            // alignText: Alignment.center
                                          ),
                                        ),
                                      ),
                                      text(
                                        context,
                                        "150",
                                        18.0.sp,
                                        Color(0xff000000),
                                        bold: true,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 60.h,
                                  ),
                                  text(
                                      context,
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                      14.0.sp,
                                      AppColors.customBlack,
                                      maxLines: 8),
                                  // textWidget(
                                  //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                  //   FontWeight.w300,
                                  //   0xff7000000,
                                  //   14,
                                  // ),

                                  Wrap(
                                    spacing: 10.h,
                                    runSpacing: 10.h,
                                    children: [
                                      coloredButton(
                                          context, 'math', Color(0xff1BE59D),
                                          width: 137.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xffF37171),
                                          width: 156.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xff2196F3),
                                          width: 113.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xffFEDB41),
                                          width: 190.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                      coloredButton(
                                          context, 'maths', Color(0xff915DE7),
                                          width: 213.w,
                                          height: 35.h,
                                          fontSize: 14.sp,
                                          fontColor: Color(0xffffffff),
                                          function: () {},
                                          radious: 25.r),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                top: -50.0,
                                right: 0,
                                left: 0,
                                // (background container size) - (circle height / 2)
                                child: Center(
                                  child: Stack(
                                    overflow: Overflow.visible,
                                    children: [
                                      Container(
                                        height: 170.h,
                                        width: 183.w,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/png/wp2398385 1.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: -15,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xffC4C4C4)
                                                .withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/png/star.png'),
                                              text(
                                                context,
                                                "4.5",
                                                15.sp,
                                                Colors.black,
                                                bold: true,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  //
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        // alignment: Alignment.center,
                        width: 400.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        margin: EdgeInsets.only(
                          left: 45.w,
                          right: 45.w,
                          // top: 50.h,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 160.w,
                              height: 35.h,
                              margin: EdgeInsets.only(
                                top: 21.h,
                                left: 25.w,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xff3DDEA5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Align(
                                alignment: Alignment.center,
                                child: text(context, "Availability", 18.0.sp,
                                    AppColors.customWhite,
                                    bold: false),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: 132.w,
                              height: 35.h,
                              margin: EdgeInsets.only(
                                top: 15.h,
                                left: 45.w,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff3DDEA5),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: text(context, 'Pre 12pm ', 18.r,
                                    Color(0xff000000)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: AppSizes.dynamicHeight(context, 0.8),
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 0.h,
                      right: 45.w,
                    ),
                    child: Column(
                      children: [
                        greyWidget(),
                        SizedBox(
                          height: 20.h,
                        ),
                        greyWidget1(),
                        SizedBox(
                          height: 20.h,
                        ),
                        greyWidget2()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget() {
    return Container(
      width: 974.w,
      height: 163.h,
      decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(30.r),
      ),
      // padding: EdgeInsets.only(
      //   left: 60.w,
      //   right: 60.w,
      //   top: 20.h,
      //   bottom: 20.h,
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 218.w,
            height: 35.h,
            margin: EdgeInsets.only(
              top: 21.h,
              left: 21.w,
            ),
            decoration: BoxDecoration(
                color: Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: text(
                  context, "Basic Information", 18.0.sp, AppColors.customWhite,
                  bold: false),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Address",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "274, sher-e-bangla road, Dhaka- 1209",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 100.w,
                height: 10.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Gender",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Male",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget1() {
    return Container(
      width: 974.w,
      height: 266.h,
      decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 218.w,
            height: 35.h,
            margin: EdgeInsets.only(
              top: 21.h,
              left: 21.w,
            ),
            decoration: BoxDecoration(
                color: Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: text(
                context,
                "Education",
                18.0,
                AppColors.customWhite,
                bold: false,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Current Institute",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Maple Leaf International School And College",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "class",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Std- VI",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 120.w,
            height: 30.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Medium",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "English Medium",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 240.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Background ",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Science",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget2() {
    return Container(
      width: 974.w,
      height: 354.h,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              Container(
                width: 470.w,
                height: 334.h,
                decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                    width: 2,
                    color: Color(0xffF1F1F1),
                  )),
                  // border: Border.all(
                  // width: 2,
                  // color: Color(0xffF1F1F1),
                  // ),
                  // borderRadius: BorderRadius.circular(30.r),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 114.w,
                            height: 35.h,
                            margin: EdgeInsets.only(
                              left: 35.h,
                              top: 40.h,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff3DDEA5),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: text(
                                context,
                                "Reviews",
                                18.0,
                                AppColors.customWhite,
                                bold: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      listTileWidget(),
                      SizedBox(
                        height: 10.h,
                      ),
                      listTileWidget(),
                      SizedBox(
                        height: 10.h,
                      ),
                      listTileWidget(),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200.w,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20,
                                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                const Text(
                                  '/4',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            text(
                                context,
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                14,
                                AppColors.customBlack,
                                bold: false,
                                maxLines: 5),
                          ],
                        ),
                      ),
                      Container(
                        height: 91.h,
                        width: 90.w,
                        margin: EdgeInsets.only(
                          left: 20.w,
                        ),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/png/wp2398385 1.png",
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget reviewSecondBoxWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        textWidget(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin.",
          FontWeight.w300,
          0xffffffff,
          14,
        ),
        Row(
          children: [
            Container(
              // color: Colors.black,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            const Text(
              '/4',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            CircleAvatar(
              radius: 46.r,
              backgroundImage: const AssetImage(
                "assets/png/wp2398385 1.png",
              ),
            ),
          ],
        ),
        //  textWidget(
        //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Tortor vulputate ut mauris sem. At platea erat diam sed proin.",
        //         FontWeight.w300,
        //         0xffffffff,
        //         14,
        //       ),
      ],
    );
  }

  Widget listTileWidget() {
    return Container(
      width: 241.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          // CircleAvatar(
          //   radius: 26.r,
          //   backgroundImage: const AssetImage(
          //     "assets/png/wp2398385 1.png",
          //   ),
          // ),
          Container(
            height: 43.h,
            width: 43.w,
            margin: EdgeInsets.only(
              top: 5.h,
              bottom: 5.h,
              left: 8.w,
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/png/wp2398385 1.png",
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 5.h,
              bottom: 5.h,
              left: 15.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(
                  context,
                  "Imran Khan",
                  12,
                  AppColors.customBlack,
                  bold: true,
                ),
                text(
                  context,
                  "Class 6, DRMC",
                  12,
                  AppColors.customBlack,
                  bold: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textWidget(
    String text,
    fontWeight,
    color,
    size,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: Color(color),
      ),
    );
  }
}
