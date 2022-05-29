// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/teacher/TeacherWallet/withdraw.dart';
import 'package:heilo/screens/teacher/drawer/teacher_drawer.dart';
import 'package:heilo/utils/app_routes.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../../utils/config.dart';

class TeacherWalletMobile extends StatefulWidget {
  const TeacherWalletMobile({Key? key}) : super(key: key);

  @override
  State<TeacherWalletMobile> createState() => _TeacherWalletMobileState();
}

class _TeacherWalletMobileState extends State<TeacherWalletMobile> {
  String dropdownvalue = 'Total Balance';
  var items = [
    'Total Balance',
    'Amount',
    'Duration',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: teacherScafoldKey,
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
                teacherScafoldKey.currentState!.openDrawer();
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
      drawer: TeacherDrawer(),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: AppSizes.dynamicWidth(context, .03),
            vertical: AppSizes.dynamicHeight(context, 0.0)),
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  // color: Colors.orange,
                  height: double.infinity,

                  // color: AppColors.customYellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: AppSizes.dynamicHeight(context, 0.2),
                            width: AppSizes.dynamicWidth(context, 0.8),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/png/card2.png')),
                                color: AppColors.navyBlue,
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(
                                vertical: AppSizes.dynamicHeight(context, .02),
                                horizontal:
                                    AppSizes.dynamicWidth(context, .02)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    text(
                                        context,
                                        'Balance',
                                        // AppSizes.dynamicWidth(context, .03),
                                        65.sp,
                                        AppColors.customWhite),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      text(
                                          context,
                                          'Last week',
                                          // AppSizes.dynamicWidth(context, .02),
                                          65.sp,
                                          AppColors.blue),
                                      boldPopinText(
                                          'Tk. 1437.00',
                                          // AppSizes.dynamicWidth(context, .04),
                                          65.sp,
                                          AppColors.customWhite)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      text(
                                          context,
                                          '(-405.00)',
                                          55.sp,
                                          // AppSizes.dynamicWidth(context, .02),
                                          AppColors.blue),
                                      InkWell(
                                        onTap: () {
                                          AppRoutes.push(context, WithDraw());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5,
                                            horizontal: 10,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white)),
                                          child: Center(
                                            child: text(
                                              context,
                                              'Tap to withdraw',
                                              65.sp,
                                              // AppSizes.dynamicWidth(
                                              //     context, .02),
                                              AppColors.customWhite,
                                              bold: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.dynamicHeight(context, 0.02.h),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: AppSizes.dynamicHeight(context, .6),
                          width: double.infinity,
                          // padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              // color: Colors.amber,
                              color: AppColors.customWhite,
                              // border: Border.all(color: AppColors.green),
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Column(
                            children: [
                              headingRow(Color(0xffEBEBEB)),
                              // SizedBox(
                              //   height: 5,
                              // ),
                              dropdownvalue == 'Total Balance'
                                  ? Expanded(
                                      child: Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.customGrey,
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.h,
                                          horizontal: AppSizes.dynamicWidth(
                                              context, .01)),
                                      child: ListView.builder(
                                          itemCount: 15,
                                          itemBuilder: ((context, index) {
                                            return paymentDetailsRow(
                                              AppColors.lightGrey,
                                              '#1112',
                                              'Safin Riaz',
                                              '2 hours',
                                              // 'Tk. 600.00',
                                              // 'Tk. 1750',
                                            );
                                          })),
                                    ))
                                  : dropdownvalue == 'Amount'
                                      ? Expanded(
                                          child: Container(
                                          decoration: BoxDecoration(
                                              color: AppColors.customGrey,
                                              borderRadius:
                                                  BorderRadius.circular(0)),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h,
                                              horizontal: AppSizes.dynamicWidth(
                                                  context, .01)),
                                          child: ListView.builder(
                                              itemCount: 15,
                                              itemBuilder: ((context, index) {
                                                return paymentDetailsRow(
                                                  AppColors.lightGrey,
                                                  '#1112',
                                                  'Safin Riaz',
                                                  'Tk. 600',
                                                  // 'Tk. 600.00',
                                                  // 'Tk. 1750',
                                                );
                                              })),
                                        ))
                                      : Expanded(
                                          child: Container(
                                          decoration: BoxDecoration(
                                              color: AppColors.customGrey,
                                              borderRadius:
                                                  BorderRadius.circular(0)),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h,
                                              horizontal: AppSizes.dynamicWidth(
                                                  context, .01)),
                                          child: ListView.builder(
                                              itemCount: 15,
                                              itemBuilder: ((context, index) {
                                                return paymentDetailsRow(
                                                  AppColors.lightGrey,
                                                  '#1112',
                                                  'Safin Riaz',
                                                  '2 hours',
                                                  // 'Tk. 600.00',
                                                  // 'Tk. 1750',
                                                );
                                              })),
                                        )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget headingRow(Color bgColor) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .96,
      height: 51.h,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          text(context, 'Serial  no.', AppSizes.dynamicWidth(context, 0.04),
              AppColors.customBlack),
          VerticalDivider(
            color: AppColors.customWhite,
          ),
          text(context, 'Details', AppSizes.dynamicWidth(context, 0.04),
              AppColors.customBlack),
          VerticalDivider(
            color: AppColors.customWhite,
          ),
          Container(
            height: 40.h,
            width: 600.w,
            padding: EdgeInsets.only(
              top: 4.h,
              bottom: 4.h,
              left: 10.w,
              right: 10.w,
            ),
            color: Colors.white,
            child: DropdownButton(
              iconDisabledColor: const Color(0xff11B990),
              // Initial Value
              value: dropdownvalue,
              isExpanded: true,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 65.sp,
                    ),
                  ),
                );
              }).toList(),
              underline: SizedBox(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                  print(dropdownvalue);
                });
              },
            ),

            // child: text(context, 'Duration',
            //     AppSizes.dynamicWidth(context, 0.04), AppColors.customBlack),
          ),
          VerticalDivider(
            color: AppColors.customWhite,
          ),
          // text(context, 'Amount', AppSizes.dynamicWidth(context, 0.02),
          //     AppColors.customBlack),
          // VerticalDivider(
          //   color: AppColors.customWhite,
          // ),
          // text(context, 'Total Balance.', AppSizes.dynamicWidth(context, 0.02),
          //     AppColors.customBlack),
        ],
      ),
    );
  }

  Widget paymentDetailsRow(
    Color dividerColor,
    String serial,
    String details,
    String duration,
    // String amount,
    // String totalBalance,
  ) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .82,
        height: 65.h,
        decoration: BoxDecoration(
            // color:bgColor ,
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      // color: AppColors.blue,
                      child: text(context, serial, 13, AppColors.customBlack)),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: AppSizes.dynamicWidth(context, .04)),
                    child: Container(
                        // color: Colors.pink,
                        child:
                            text(context, details, 13, AppColors.customBlack)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: AppSizes.dynamicWidth(context, .04)),
                    child: Container(
                        // color: Colors.red,
                        child:
                            text(context, duration, 13, AppColors.customBlack)),
                  ),
                ),
                // Expanded(
                //   flex: 3,
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //         left: AppSizes.dynamicWidth(context, .04)),
                //     child: Container(
                //         // color: Colors.amber,
                //         child: text(context, amount, 13, AppColors.green)),
                //   ),
                // ),
                // Expanded(
                //   flex: 4,
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //         left: AppSizes.dynamicWidth(context, .04)),
                //     child: Container(
                //         // color: Colors.brown,
                //         child: Row(
                //       children: [
                //         text(context, totalBalance, 13, AppColors.customBlack),
                //       ],
                //     )),
                //   ),
                // ),
              ],
            ),
            Divider(color: dividerColor)
          ],
        ),
      ),
    );
  }
}
