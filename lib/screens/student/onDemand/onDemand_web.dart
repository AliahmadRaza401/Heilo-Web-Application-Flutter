// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../utils/config.dart';

class OnDemandWeb extends StatefulWidget {
  const OnDemandWeb({Key? key}) : super(key: key);

  @override
  State<OnDemandWeb> createState() => _OnDemandWebState();
}

class _OnDemandWebState extends State<OnDemandWeb> {
  String dropdownvalue = 'Subject';
  String dropdownvalue1 = 'Topic';
  String dropdownvalueavail = 'Availability';
  int _radioValue = 0;

  // List of items in our dropdown menu
  var items = [
    'Subject',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  // List of items in our dropdown menu
  var items1 = [
    'Topic',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  // List of items in our dropdown menu
  var availitem = [
    'Availability',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

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
            Container(
              width: 502.w,
              height: 65.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 2, color: Color(0xffE4E4E4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalue,
                    underline: Container(color: Colors.transparent),
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalue1,
                    underline: Container(color: Colors.transparent),
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    // Array list of items
                    items: items1.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1 = newValue!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                      height: 65.h,
                      width: 182.w,
                      decoration: BoxDecoration(
                        color: Color(0xff01B489),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                            // topLeft: Radius.circular(40.0),
                            bottomLeft: Radius.circular(64.0)),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: text(
                              context, "SEARCH", 25.sp, AppColors.customWhite,
                              bold: false)))
                ],
              ),
            ),
            Container(
              width: 771.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 5.0,
                    percent: 0.7,
                    progressColor: AppColors.primaryColor,
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: AppColors.primaryColor,
                        value: 0,
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value as int;
                          });
                        },
                      ),
                      Text(
                        'Male',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: AppColors.primaryColor,
                        value: 1,
                        groupValue: _radioValue,
                        onChanged: (value) {
                          setState(() {
                            _radioValue = value as int;
                          });
                        },
                      ),
                      Text(
                        'FeMale',
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  DropdownButton(
                    // Initial Value
                    value: dropdownvalueavail,
                    underline: Container(color: Colors.transparent),
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    // Array list of items
                    items: availitem.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalueavail = newValue!;
                      });
                    },
                  ),
                  Container(
                    width: 170.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: AppColors.lightgreyborder),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          size: 20,
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          width: 128.w,
                          padding: EdgeInsets.only(
                            left: 10.w,
                            bottom: 20.h,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search By ID',
                                hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.greyText,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AppSizes.heightBox(context, .02),
            Padding(
              padding: EdgeInsets.only(left: 180.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 760.w,
                        height: 700.h,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, i) {
                            return profileCard(context);
                          },
                        ),
                      ),
                    ],
                  ),
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
                              return notificationCard(context);
                            },
                          ),
                        ),
                      ],
                    ),
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

Widget profileCard(context) {
  return Container(
    width: 700.w,
    height: 130.h,
    decoration: BoxDecoration(
      color: AppColors.customGrey,
      borderRadius: BorderRadius.circular(10.r),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 10.w,
      vertical: 14.h,
    ),
    margin: EdgeInsets.only(bottom: 14.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                CircleAvatar(
                  radius: 46.r,
                  backgroundImage: const AssetImage(
                    "assets/png/wp2398385 1.png",
                  ),
                ),
                Positioned(
                  top: -5,
                  right: -40,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffC4C4C4).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/png/star.png'),
                        text(
                          context,
                          "4.5",
                          15,
                          Colors.black,
                          bold: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              context,
              "SAKIB ABDULLAH",
              20.sp,
              AppColors.customBlack,
              bold: true,
            ),
            text(
              context,
              "bangladesh University Of Professionals\nAccounting , Finance, English, ICT ",
              14.sp,
              AppColors.customBlack,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 42.h,
              width: 146.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child:
                  Center(child: text(context, "450/hr", 18.sp, Colors.black)),
            ),
            Container(
              height: 42.h,
              width: 146.w,
              decoration: BoxDecoration(
                color: AppColors.greenDark,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child:
                  Center(child: text(context, "Message", 18.sp, Colors.white)),
            ),
            // coloredButton(
            //   context,
            //   "450/Hr",
            //   AppColors.customWhite,
            //   width: 146.w,
            //   height: 42.h,
            // ),
            // coloredButton(
            //   context,
            //   "Message",
            //   AppColors.greenDark,
            //   width: 146.w,
            //   height: 42.h,
            //   fontColor: true,
            // ),
          ],
        ),
      ],
    ),
  );
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
      horizontal: AppSizes.dynamicWidth(context, 0.01),
      vertical: 10.h,
    ),
    margin: EdgeInsets.only(bottom: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 26.r,
          backgroundImage: const AssetImage(
            "assets/png/wp2398385 1.png",
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: text(
            context,
            "You have received a tution request from Salsabil Murshed.",
            16.sp,
            AppColors.customBlack,
          ),
        ),
      ],
    ),
  );
}
