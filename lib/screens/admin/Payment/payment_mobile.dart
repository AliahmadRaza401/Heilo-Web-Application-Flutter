// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart.dart';
import 'package:heilo/screens/admin/admin_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../Dashboard/dash_board_mobile.dart';

class PaymentPageMobile extends StatefulWidget {
  const PaymentPageMobile({Key? key}) : super(key: key);

  @override
  State<PaymentPageMobile> createState() => _PaymentPageMobileState();
}

class _PaymentPageMobileState extends State<PaymentPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: adminScafoldKey,
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
                adminScafoldKey.currentState!.openDrawer();
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
      drawer: AdminDrawer(),
      body: Container(
          decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(30.r),
          ),
          // height: AppSizes.dynamicHeight(context, .7),
          child: Column(
            children: [
              Container(
                // color: Colors.amber,
                height: AppSizes.dynamicHeight(context, .9),
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(context, 'Payment Request ', 90.sp, AppColors.green),
                      Container(
                        width: AppSizes.dynamicWidth(context, 1),
                        height: 450.h,
                        // color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: AppSizes.dynamicHeight(context, .01)),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending'),

                                    paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending'),
                                    paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending'),
                                    paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending'),
                                    paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending'),
                                    paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending'),  paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending'),

                            ],
                          ),
                        
                        ),
                      ),
                      Container(
                        height: AppSizes.dynamicHeight(context, .4),
                        width: double.infinity,
                        // color: Colors.amber,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: AppSizes.dynamicHeight(context, .35),
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: AppColors.lightGrey,
                                    borderRadius: BorderRadius.circular(30.r)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: AppSizes.dynamicHeight(
                                              context, .03)),
                                      child: headingRow(AppColors.customWhite),
                                    ),
                                    Container(
                                      height:
                                          AppSizes.dynamicHeight(context, .21),
                                      // color: Colors.blue,
                                      width: double.infinity,
                                      child: ListView.builder(
                                          itemCount: 10,
                                          itemBuilder: ((context, index) {
                                            return paymentDetailsRow(
                                                AppColors.customWhite,
                                                '#1112',
                                                'Safin Riaz',
                                                '11-09-2021',
                                                'Tk. 1000');
                                          })),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: AppSizes.dynamicHeight(context, .008),
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  paymentStatus('TK. 50,000', 'Total Paid',
                                      AppColors.customWhite),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      AppSizes.heightBox(context, .02),
                      Container(
                        height: AppSizes.dynamicHeight(context, .4),
                        width: double.infinity,
                        // color: Colors.amber,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: AppSizes.dynamicHeight(context, .35),
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: AppColors.customWhite,
                                    border: Border.all(color: AppColors.green),
                                    borderRadius: BorderRadius.circular(30.r)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: AppSizes.dynamicHeight(
                                              context, .03)),
                                      child: headingRow(AppColors.noColor),
                                    ),
                                    Container(
                                      height:
                                          AppSizes.dynamicHeight(context, .21),
                                      // color: Colors.blue,
                                      width: double.infinity,
                                      child: ListView.builder(
                                          itemCount: 10,
                                          itemBuilder: ((context, index) {
                                            return paymentDetailsRow(
                                                AppColors.customWhite,
                                                '#1112',
                                                'Safin Riaz',
                                                '11-09-2021',
                                                'Tk. 1000');
                                          })),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: AppSizes.dynamicHeight(context, .008),
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  paymentStatus('TK. 50,000', 'Total Due',
                                      AppColors.customWhite),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      AppSizes.heightBox(context, .02),
                      Container(
                        // height: AppSizes.dynamicHeight(context, .4),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.r))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Container(
                                height: 30.h,
                                width: AppSizes.dynamicWidth(context, .8),
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
                                            EdgeInsets.only(bottom: 20.h, right: 15.w)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 400.h,
                              child: ListView.builder(
                                  itemCount: 15,
                                  itemBuilder: ((context, index) {
                                    return searchResultsRow(
                                        'Ruhul Amin Tusar ',
                                        '01824696930',
                                        'writetusar@gmail.com',
                                        'active');
                                  })),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget paymentStatus(
      String boldText, String normaltext, Color boldtextColor) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 690.w,
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: AppColors.greenDark),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(context, normaltext, 45.sp, AppColors.customWhite,
                  alignText: TextAlign.center),
              Container(
                child: Row(
                  children: [
                    text(context, 'last 7 days', 65.sp, AppColors.customBlack,
                        alignText: TextAlign.center),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.customWhite,
                      size: 10,
                    )
                  ],
                ),
              )
            ],
          ),
          boldPopinText(boldText, 65.sp, boldtextColor),
        ],
      ),
    );
  }

  Widget paymentsRow(String image, String name, String date, String method,
      String id, String availableBalance, String amount, String status) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.only(left: 30.w,right: 30.w,top: 10.h),
      // width: size.width * 1,
      height: 120.h,
      decoration: BoxDecoration(
        color: AppColors.lightGreen,
        // color: Colors.red,
        borderRadius: BorderRadius.circular(30.r),
      ),
      // padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: AppSizes.dynamicHeight(context, .02),
                backgroundImage: AssetImage(image),
              ),
              text(context, name, 60.sp, AppColors.customBlack),
              text(context, date, 60.sp, AppColors.greyText),

              //      Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     text(context, name, 50.sp, AppColors.customBlack),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 2),
              //       child: text(context, date, 50.sp, AppColors.greyText),
              //     ),
              //   ],
              // ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(context, method, 60.sp, AppColors.customBlack),
              text(context, id, 60.sp, AppColors.greyText),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     text(context, method, 50.sp, AppColors.customBlack),
              //     text(context, id, 50.sp, AppColors.greyText),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 2),
              //       child: text(context, id, 50.sp, AppColors.greyText),
              //     ),
              //   ],
              // ),

              //  Row(
              //   children: [
              //     text(context, 'Requested Amount: ',50.sp,
              //         AppColors.greyText),
              //     text(context, amount, 50.sp, AppColors.customBlack),
              //   ],
              // ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(context, 'Requested Amount: ', 60.sp, AppColors.greyText),
              text(context, amount, 60.sp, AppColors.customBlack),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(context, 'Available Balance: ', 60.sp, AppColors.greyText),
              text(context, availableBalance, 60.sp, AppColors.customBlack),
            ],
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(top: 2),
          //           child: text(context, 'Available Balance: ', 50.sp,
          //               AppColors.greyText),
          //         ),
          //         // Padding(
          //         //   padding: const EdgeInsets.only(top: 2),
          //         //   child: text(context, availableBalance, 50.sp,
          //         //       AppColors.customBlack),
          //         // ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget headingRow(Color bgColor) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width,
        height: 31.h,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(context, 'Serial  no.', 65.sp, AppColors.customBlack),
            VerticalDivider(),
            text(context, 'Details', 65.sp, AppColors.customBlack),
            VerticalDivider(),
            text(context, 'Date', 65.sp, AppColors.customBlack),
            VerticalDivider(),
            text(context, 'Amount', 65.sp, AppColors.customBlack),
          ],
        ),
      ),
    );
  }

  Widget paymentDetailsRow(Color dividerColor, String serial, String details,
      String date, String amount) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width,
        height: 50.h,
        decoration: BoxDecoration(
            // color:bgColor ,
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(context, serial, 60.sp, AppColors.customBlack),
                text(context, details, 60.sp, AppColors.customBlack),
                text(context, date, 60.sp, AppColors.customBlack),
                text(context, amount, 60.sp, AppColors.customBlack),
              ],
            ),
            Divider(color: dividerColor)
          ],
        ),
      ),
    );
  }

  Widget searchResultsRow(String name, String id, String gmial, String status) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        // width: size.width * .9,
        height: 80.h,
        decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(30.r)),
        padding: EdgeInsets.only(left: 10.w, right: 5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    text(context, name,65.sp,
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
                         65.sp,
                          AppColors.greyText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: text(
                          context,
                          gmial,
                          50.sp,
                          AppColors.greyText),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 30.h,
              width: AppSizes.dynamicWidth(context, .2),
              decoration: BoxDecoration(
                  // border: Border.all(color: AppColors.green),
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  text(context, status, 50.sp, AppColors.greyText),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 10,
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
