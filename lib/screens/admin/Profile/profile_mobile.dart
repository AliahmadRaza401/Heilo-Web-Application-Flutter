// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';

import '../../../utils/dynamic_sizes.dart';
import '../../../widgets/text_widget.dart';

class ProfileMobile extends StatefulWidget {
  const ProfileMobile({Key? key}) : super(key: key);

  @override
  State<ProfileMobile> createState() => _ProfileMobileState();
}

class _ProfileMobileState extends State<ProfileMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(30),
                  height: double.infinity,
                  // color: AppColors.customYellow,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.customWhite,
                              border: Border.all(color: AppColors.green),
                              borderRadius: BorderRadius.circular(30.r)),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.dynamicWidth(context, .02)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Spacer(flex: 1,),
                                  CircleAvatar(
                                    backgroundColor: AppColors.green,
                                    radius: AppSizes.dynamicHeight(context, .07),
                                    child: CircleAvatar(
                                      radius: AppSizes.dynamicHeight(context, .065),
                                      backgroundImage:
                                          AssetImage('assets/png/charles.png'),
                                    ),

                                  ),
                                  Spacer(flex: 3),

                                ],
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  text(
                                      context,
                                      'Zarin Tajnim ',
                                      AppSizes.dynamicWidth(context, .01),
                                      AppColors.darkGrey,
                                      bold: true),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: text(
                                        context,
                                        'Maple Leaf International School and College',
                                        AppSizes.dynamicWidth(context, .008),
                                        AppColors.greyText),
                                  ),
                                  Spacer(),
                                  text(
                                      context,
                                      'Address',
                                      AppSizes.dynamicWidth(context, .01),
                                      AppColors.green),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: text(
                                        context,
                                        '274, sher-e-bangla road, Dhaka- 1209',
                                        AppSizes.dynamicWidth(context, .009),
                                        AppColors.greyText),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          text(
                                              context,
                                              'Gender',
                                              AppSizes.dynamicWidth(
                                                  context, .009),
                                              AppColors.green),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2),
                                            child: text(
                                                context,
                                                'Femalr ',
                                                AppSizes.dynamicWidth(
                                                    context, .009),
                                                AppColors.greyText),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text(
                                                context,
                                                'Join Date',
                                                AppSizes.dynamicWidth(
                                                    context, .009),
                                                AppColors.green),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: text(
                                                  context,
                                                  '11/09/2020',
                                                  AppSizes.dynamicWidth(
                                                      context, .009),
                                                  AppColors.greyText),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                ],
                              ),
                              Spacer(
                                flex: 9,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  smallContainer(
                                      'Email', 'sakib.abdullah@gmail.com'),
                                  smallContainer(
                                      'Contact Number', '01765646564'),
                                  smallContainer('Medium', 'English Medium'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.dynamicWidth(context, .018),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(
                                      context,
                                      'TUITION AVAIL',
                                      30.sp,
                                      // AppSizes.dynamicWidth(context, .015),
                                      AppColors.green),
                                  boldPopinText(
                                      '41',
                                      65.sp,

                                      // AppSizes.dynamicWidth(context, .018),
                                      AppColors.darkGrey)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(
                                      context,
                                      'QUIZ APPEARED ',
                                      30.sp,

                                      // AppSizes.dynamicWidth(context, .015),
                                      AppColors.green),
                                  boldPopinText(
                                      '25',
                                      65.sp,

                                      // AppSizes.dynamicWidth(context, .018),
                                      AppColors.darkGrey)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text(
                                      context,
                                      'TOTAL MONEY SPEND ',
                                      31.sp,

                                      // AppSizes.dynamicWidth(context, .015),
                                      AppColors.darkGrey),
                                  boldPopinText(
                                      'TK. 2511',
                                      65.sp,
                                      // AppSizes.dynamicWidth(context, .018),
                                      AppColors.green)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: upCommingSessions()
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30.r))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 60.h,
                          width: 407.w,
                          decoration: BoxDecoration(
                              // border: Border.all(color: AppColors.green),
                              color: AppColors.customWhite,
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextField(
                              cursorColor: AppColors.green,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: AppColors.greyText,
                                  ),
                                  contentPadding:
                                      EdgeInsets.only(top: 5, left: 10)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: 15,
                              itemBuilder: ((context, index) {
                                return searchResultsRow(
                                    'Ruhul Amin Tusar ',
                                    '01824696930',
                                    'writetusar@gmail.com',
                                    'active');
                              })))
                    ],
                  ),
                )),
          ],
        ));
  }

    Widget upCommingSessions() {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: AppSizes.dynamicHeight(context, .4),
      width: size.width * .63,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
                height: size.height * .41,
                width: size.width * .63,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                padding:
                    EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return detailsRowa();
                    })),
          ),
          Container(
            height: 51.h,
            width: 262.w,
            decoration: BoxDecoration(
                color: AppColors.customWhite,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
            child: Center(
              child: text(context, 'Upcoming Sessions', 15, AppColors.greyText),
            ),
          ),
          // Positioned(
          //   right: 40,
          //   child: Container(
          //     height: 51.h,
          //     width: 262.w,
          //     decoration: BoxDecoration(
          //         border: Border.all(color: AppColors.green),
          //         color: AppColors.customWhite,
          //         borderRadius: BorderRadius.circular(100)),
          //     padding: EdgeInsets.symmetric(horizontal: 10),
          //     child: Align(
          //       alignment: Alignment.centerRight,
          //       child: TextField(
          //         cursorColor: AppColors.green,
          //         decoration: InputDecoration(
          //             border: InputBorder.none,
          //             suffixIcon: Icon(
          //               Icons.search,
          //               color: AppColors.green,
          //             ),
          //             contentPadding: EdgeInsets.only(top: 5, left: 10)),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
   Widget detailsRowa() {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .62,
        height: 51.h,
        decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
                height: 34.h,
                width: 157.w,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.green),
                    color: AppColors.customWhite,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child:
                      text(context, '27th July, 2021', 10, AppColors.greyText),
                )),
            SizedBox(
              width: size.width * .008,
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'ID 11121', 15, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Ruhul Tusar', 15, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: text(context, 'Topic- Polygons I Gerometry I Maths B',
                      15, AppColors.greyText),
                ),
              ),
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Time- 4:30-5.30 pm', 15, AppColors.green),
          ],
        ),
      ),
    );
  }


  Widget smallContainer(String greenText, String greyText) {
    return Container(
      height: 50.h,
      width: 300.w,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyText),
          borderRadius: BorderRadius.circular(15.r)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(context, greenText, AppSizes.dynamicWidth(context, .007),
              AppColors.green),
          text(context, greyText, AppSizes.dynamicWidth(context, .007),
              AppColors.greyText),
        ],
      ),
    );
  }

  Widget searchResultsRow(String name, String id, String gmial, String status) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .3,
        height: 47.h,
        decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.only(left: 20, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    text(context, name, AppSizes.dynamicWidth(context, .006),
                        AppColors.customBlack,
                        bold: true),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: text(
                          context,
                          id,
                          AppSizes.dynamicWidth(context, .006),
                          AppColors.greyText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: text(
                          context,
                          gmial,
                          AppSizes.dynamicWidth(context, .006),
                          AppColors.greyText),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 35.h,
              width: 126.w,
              decoration: BoxDecoration(
                  // border: Border.all(color: AppColors.green),
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  text(context, status, 10, AppColors.greyText),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20,
                    color: AppColors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
