// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/notification_container.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:heilo/widgets/top_iconavatar.dart';
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
  int _value = 6;
  double value = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 1),
      height: AppSizes.dynamicHeight(context, 1),
      decoration: BoxDecoration(
        // color: Colors.amber,
        color: AppColors.customWhite,
        borderRadius: BorderRadius.circular(30.r),
      ),
      padding: EdgeInsets.all(AppSizes.dynamicWidth(context, 0.02)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // AppSizes.heightBox(context, .02),
            topIconAvatar(context),
            Container(
              // color: Colors.yellow,
              padding: EdgeInsets.only(left: 0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 502.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border:
                                Border.all(width: 2, color: Color(0xffE4E4E4))),
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
                                    child: text(context, "SEARCH", 25.sp,
                                        AppColors.customWhite,
                                        bold: false)))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        width: 771.w,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StatefulBuilder(
                              builder:
                                  (BuildContext context, StateSetter setStat) {
                                return SizedBox(
                                  width: 180.w,
                                  height: 10.h,
                                  child: Slider(
                                    activeColor: AppColors.primaryColor,
                                    inactiveColor: Colors.grey,
                                    min: 0,
                                    max: 100,
                                    value: value,
                                    onChanged: (value) {
                                      setStat(() {
                                        value = value;
                                      });
                                    },
                                  ),
                                  //  Slider(
                                  //     value: _value.toDouble(),
                                  //     min: 1.0,
                                  //     max: 20.0,
                                  //     divisions: 10,
                                  //     activeColor: AppColors.primaryColor,
                                  //     inactiveColor: Colors.grey,
                                  //     label: 'Set Price value',
                                  //     onChanged: (double newValue) {
                                  //       setState(() {
                                  //         _value = newValue.round();
                                  //       });
                                  //     },
                                  //     semanticFormatterCallback: (double newValue) {
                                  //       return '${newValue.round()} dollars';
                                  //     }),
                                );
                              },
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
                            Container(
                              height: 33.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.w,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.lightgreyborder),
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: DropdownButton(
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
                            ),
                            Container(
                              width: 170.w,
                              height: 46.h,
                              padding: EdgeInsets.only(
                                left: 10.w,
                              ),
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
                                    size: 17,
                                  ),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 128.w,
                                    padding: EdgeInsets.only(
                                      left: 10.w,
                                      bottom: 15.h,
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
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        // color: Colors.amber,
                        width: 760.w,
                        height: 570.h,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, i) {
                            return Container(
                                padding: EdgeInsets.only(
                                  right: 20.w,
                                ),
                                child: profileCard(context));
                          },
                        ),
                      ),
                    ],
                  ),
                  notificationContainer(context),
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
    // width: 700.w,
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

Widget notificationCardforall(context) {
  return Container(
    width: 476.w,
    height: 76.h,
    decoration: BoxDecoration(
      color: Color(0xffB4F4DD),
      borderRadius: BorderRadius.circular(30.r),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 20.w,
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
