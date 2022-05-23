// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/buttons.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../utils/config.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class OnDemandMobile extends StatefulWidget {
  const OnDemandMobile({Key? key}) : super(key: key);

  @override
  State<OnDemandMobile> createState() => _OnDemandMobileState();
}

class _OnDemandMobileState extends State<OnDemandMobile> {
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
  double _value = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          decoration: BoxDecoration(
            color: AppColors.customWhite,
            //  color:Colors.black,
            borderRadius: BorderRadius.circular(30.r),
          ),
          // margin: EdgeInsets.only(right: 25.w),
          padding: EdgeInsets.only(left: 90.w,right: 90.w,top: 20.w,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // width: 502.w,
                  padding: EdgeInsets.only(
                    left: AppSizes.dynamicWidth(context, 0.02),
                    // right:  AppSizes.dynamicWidth(context, 0.02),
                  ),
                  height: 65.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 2, color: Color(0xffE4E4E4))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   width: 20.w,
                      // ),
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
                      // SizedBox(
                      //   width: 20.w,
                      // ),
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
                      // SizedBox(
                      //   width: 20.w,
                      // ),
                      Container(
                          height: 65.h,
                          width: AppSizes.dynamicWidth(context, 0.4),
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
                              child: text(context, "SEARCH", 85.sp,
                                  AppColors.customWhite,
                                  bold: false)))
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizes.dynamicHeight(context, 0.01),
                ),
                Container(
                  // width: 771.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                            style: TextStyle(fontSize: 85.sp),
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
                              fontSize: 85.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        height: 10.h,
                        child: Slider(
                          activeColor: AppColors.primaryColor,
                          inactiveColor: Colors.grey,
                          min: 0,
                          max: 100,
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizes.dynamicHeight(context, 0.01),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // width: AppSizes.dynamicWidth(context, 0.38),
                      padding: EdgeInsets.only(
                        left: AppSizes.dynamicWidth(context, 0.1),
                        right: AppSizes.dynamicWidth(context, 0.1),
                      ),
                      height: 56.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColors.lightgreyborder),
                        borderRadius: BorderRadius.circular(80.r),
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
                                fontSize: 86.sp,
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
                    SizedBox(
                      height: AppSizes.dynamicHeight(context, 0.01),
                    ),
                    Container(
                      // width: AppSizes.dynamicWidth(context, 0.56),
                      height: 56.h,
                      margin: EdgeInsets.only(
                        left: AppSizes.dynamicWidth(context, 0.01),
                        right: AppSizes.dynamicWidth(context, 0.01),
                      ),

                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColors.lightgreyborder),
                        borderRadius: BorderRadius.circular(80.r),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.search,
                            size:25,
                              // color: AppColors.greyText,
                          ),
                          // Image(image: AssetImage('assets/png/searchicon.png')),
                          Container(
                            alignment: Alignment.topCenter,
                            width: AppSizes.dynamicWidth(context, 0.33),
                            padding: EdgeInsets.only(
                              left: 10.w,
                              // bottom: 20.h,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search By Name',
                                  hintStyle: TextStyle(
                                    fontSize: 65.sp,
                                    color: AppColors.greyText,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                AppSizes.heightBox(context, .02),
                SizedBox(
                  // width: AppSizes.dynamicWidth(context, 0.9),
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
          ),
        ));
  }
}

Widget profileCard(context) {
  return Flexible(
    child: Container(
      // width: 700.w,
      height: 90.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(45.r),
      ),
      // padding: EdgeInsets.symmetric(
      //   horizontal: 54.w,
      //   vertical: 5.h,
      // ),
      margin: EdgeInsets.only(bottom: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
                  SizedBox(
            width: 20.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
         
              Stack(
                overflow: Overflow.visible,
                children: [
                  CircleAvatar(
                    radius: 130.r,
                    backgroundImage: const AssetImage(
                      "assets/png/wp2398385 1.png",
                    ),
                  ),
                  Positioned(
                    top: -5,
                    right: -40,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7,
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
                            65.sp,
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
          // CircleAvatar(
          //   radius: 130.r,
          //   backgroundImage: const AssetImage(
          //     "assets/png/wp2398385 1.png",
          //   ),
          // ),
          SizedBox(
            width: AppSizes.dynamicWidth(context, 0.03),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: AppSizes.dynamicHeight(context, 0.03)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                  context,
                  "SAKIB ABDULLAH",
                  70.sp,
                  AppColors.customBlack,
                  bold: true,
                ),
                Wrap(
                  children: [
                    text(context, "bangladesh University", 65.sp,
                        AppColors.customBlack,
                        maxLines: 1),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: AppSizes.dynamicWidth(context, 0.01),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 25.h,
                width: AppSizes.dynamicWidth(context, 0.2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(75.r),
                ),
                child:
                    Center(child: text(context, "450/hr", 65.sp, Colors.black)),
              ),
              Container(
                height: 25.h,
                width: AppSizes.dynamicWidth(context, 0.2),
                decoration: BoxDecoration(
                  color: AppColors.greenDark,
                   borderRadius: BorderRadius.circular(75.r),
                ),
                child: Center(
                    child: text(context, "Message", 65.sp, Colors.white)),
              ),
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
    ),
  );
}

Widget notificationCard(context) {
  return Flexible(
    child: Container(
      // width: 476.w,
      height: AppSizes.dynamicHeight(context, 0.1),
      decoration: BoxDecoration(
        color: Color(0xffD5EFE6),
        borderRadius: BorderRadius.circular(60.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 18.w,
        vertical: 10.h,
      ),
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 130.r,
            backgroundImage: const AssetImage(
              "assets/png/wp2398385 1.png",
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              text(
                context,
                "You have received a tution request from \nSalsabil Murshed.",
                65.sp,
                AppColors.customBlack,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

notificationPopUp(BuildContext context) {
  bool agree = false;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.r)), //this right here
          child: Container(
            // width: 450.w,
            height: 700.h,
            child: Container(
              // width: 526.w,
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
                    95.sp,
                    AppColors.customGreen,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    // width: 460.w,
                    height: 600.h,
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
          ),
        );
      });
}
