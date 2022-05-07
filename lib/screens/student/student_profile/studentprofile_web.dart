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
import 'package:heilo/widgets/text_widget.dart';

class StudentProfileWeb extends StatefulWidget {
  const StudentProfileWeb({Key? key}) : super(key: key);

  @override
  State<StudentProfileWeb> createState() => _StudentProfileWebState();
}

class _StudentProfileWebState extends State<StudentProfileWeb> {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
           SizedBox(
            height: 0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 526.w,
                height: 700.h,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                padding: EdgeInsets.only(
                  left: 45.w,
                  right: 45.w,
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: 500.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF1F1F1),
                        // color: Colors.green,
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
                            18.sp,
                            AppColors.greyText,
                            bold: true,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          text(
                            context,
                            "Maple Leaf International School and College",
                            14.sp,
                            AppColors.greyText,
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 38.h,
                                width: 191.w,
                                decoration: BoxDecoration(
                                  color: AppColors.customDarkBlue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: text(
                                    context,
                                    "Tutions completed",
                                    14.sp,
                                    AppColors.customWhite,
                                    bold: true,
                                    // alignText: Alignment.center
                                  ),
                                ),
                              ),
                              text(
                                context,
                                "150",
                                14.sp,
                                AppColors.greytextText,
                                bold: true,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 191.w,
                                height: 38.h,
                                decoration: BoxDecoration(
                                  color: Color(0xffA279E6),
                                  borderRadius: BorderRadius.circular(
                                    30.r,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: text(
                                    context,
                                    "Tutors referred",
                                    14.sp,
                                    AppColors.customWhite,
                                    bold: true,
                                    // alignText: Alignment.center
                                  ),
                                ),
                              ),
                              text(
                                context,
                                "150",
                                14.sp,
                                AppColors.greytextText,
                                bold: true,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          text(
                            context,
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                            14.sp,
                            AppColors.customBlack,
                            maxLines: 8,
                          ),
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
                                    color: Color(0xffC4C4C4).withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/png/star.png'),
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
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 100.h,
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
                      greyWidget2(),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 230.w,
            height: 36.h,
            margin: EdgeInsets.only(
              top: 20.h,
              left: 20.h,
            ),
            decoration: BoxDecoration(
                color: const Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: textWidget(
                "Basic Information",
                FontWeight.w600,
                0xffffffff,
                18.sp,
              ),
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
            margin: EdgeInsets.only(
              top: 20.h,
              left: 20.h,
            ),
            width: 145.w,
            height: 36.h,
            decoration: BoxDecoration(
                color: const Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: textWidget(
                "Education",
                FontWeight.w600,
                0xffffffff,
                18.sp,
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
                      14.sp,
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
                            height: 36.h,
                            margin: EdgeInsets.only(
                              top: 20.h,
                              left: 20.h,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xff3DDEA5),
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.center,
                              child: textWidget(
                                "Reviews",
                                FontWeight.w600,
                                0xffffffff,
                                18.sp,
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
      height: 50.h,
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
            height: 33.h,
            width: 33.w,
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
