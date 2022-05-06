// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfitWeb extends StatefulWidget {
  const ProfitWeb({Key? key}) : super(key: key);

  @override
  State<ProfitWeb> createState() => _ProfitWebState();
}

class _ProfitWebState extends State<ProfitWeb> {
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
                  //  color: Colors.amber,
                  height: double.infinity,
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              // color: AppColors.customYellow,
                              height: 200,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  profitContainer('\$ 1511', 'NET PROFIT',
                                      AppColors.customPurple),
                                  profitContainer('\$ 2511', 'GROSS PROFIT',
                                      AppColors.green),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              // color: Colors.pink,
                              height: 200,
                              child: barChart(),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          // color: Colors.amber,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: AppSizes.dynamicHeight(context, .56),

                                  width: AppSizes.dynamicWidth(context, .63),
                                  padding: EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      // border: Border.all(color: AppColors.green),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: AppSizes.dynamicHeight(
                                                context, .01)),
                                        child: headingRow(AppColors.noColor),
                                      ),
                                      Expanded(
                                          child: Container(
                                          width: AppSizes.dynamicWidth(context, .6),
                                        decoration: BoxDecoration(
                                            color: AppColors.customWhite,
                                            borderRadius:
                                                BorderRadius.circular(30.r)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: AppSizes.dynamicWidth(
                                                context, .01)),
                                        child: ListView.builder(
                                            itemCount: 10,
                                            itemBuilder: ((context, index) {
                                              return paymentDetailsRow(
                                                  AppColors.lightGrey,
                                                  '#1112',
                                                  'Safin Riaz',
                                                  '2 hours',
                                                  'Tk. 600.00',
                                                  'Tk. 1750');
                                            })),
                                      ))
                                    ],
                                  ),
                                ),
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
                                  child: text(context, 'Payment history', 18.sp,
                                      AppColors.greyText),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(
                    top: AppSizes.dynamicHeight(context, .02),
                    bottom: AppSizes.dynamicHeight(context, .02),
                    left: AppSizes.dynamicWidth(context, .02),
                    right: AppSizes.dynamicWidth(context, .01),
                  ),
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30.r),bottomLeft:  Radius.circular(30.r))),
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      AppSizes.dynamicHeight(context, .028)),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColors.customWhite,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.r),
                                        bottomLeft: Radius.circular(30.r))),
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      simpleContainer('00.00'),
                                      amoutEnter('Total Balance'),
                                      amoutEnter('Amount to\nbewithdrawn'),
                                      amoutEnter('Remaining balance'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: AppSizes.dynamicWidth(context, .03)),
                                child: Container(
                                  height: 54.h,
                                  width: 168.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.green,
                                      border: Border.all(
                                          color: AppColors.customBlack,
                                          width: 2.w),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Center(
                                    child: text(context, 'Confirm.', 13,
                                        AppColors.customWhite),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(top: AppSizes.dynamicHeight(context, .02)),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.customWhite,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  bottomLeft: Radius.circular(30.r))),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.dynamicWidth(context, .02),
                              vertical: AppSizes.dynamicHeight(context, .01)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 37.h,
                                    width: 156.w,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.green),
                                        color: AppColors.customWhite,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(100),
                                            bottomLeft: Radius.circular(100))),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        text(
                                            context,
                                            'Last 7 Days',
                                            AppSizes.dynamicWidth(
                                                context, .007),
                                            AppColors.greyText),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 45.h,
                                    width: 209.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightGrey,
                                        // border: Border.all(
                                        //     color: AppColors.customBlack,
                                        //     width: 2.w),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: text(
                                          context,
                                          'Division Wise Stats.',
                                          AppSizes.dynamicWidth(context, .007),
                                          AppColors.customBlack),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: AppSizes.dynamicWidth(
                                            context, .03)),
                                    child: text(
                                        context, 'Count.', 13, AppColors.green),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: ((context, index) {
                                      return statusRow('Barishal', '200');
                                    })),
                              ))
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
          ],
        ));
  }

  Widget statusRow(String division, String count) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: AppSizes.dynamicWidth(context, .03)),
              child: text(context, division, 13, AppColors.greyText),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: AppSizes.dynamicWidth(context, .03)),
              child: text(context, count, 13, AppColors.greyText),
            )
          ],
        ),
        Divider()
      ],
    );
  }

  Widget headingRow(Color bgColor) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .62,
        height: 51.h,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(context, 'Serial  no.', 13, AppColors.customBlack),
            VerticalDivider(
              color: AppColors.customWhite,
            ),
            text(context, 'Details', 13, AppColors.customBlack),
            VerticalDivider(
              color: AppColors.customWhite,
            ),
            text(context, 'Duration', 13, AppColors.customBlack),
            VerticalDivider(
              color: AppColors.customWhite,
            ),
            text(context, 'Amount', 13, AppColors.customBlack),
            VerticalDivider(
              color: AppColors.customWhite,
            ),
            text(context, 'Total Balance.', 13, AppColors.customBlack),
            SizedBox(width: AppSizes.dynamicWidth(context, .01),)
           
          ],
        ),
      ),
    );
  }

  Widget paymentDetailsRow(Color dividerColor, String serial, String details,
      String duration, String amount, String totalBalance) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .62,
        height: 51.h,
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
                  child: Padding(
                    
                    padding:  EdgeInsets.only(left: AppSizes.dynamicWidth(context, .01)),
                    child: Container(
                        // color: AppColors.blue,
                        child: text(context, serial, 13, AppColors.customBlack)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:  EdgeInsets.only(left: AppSizes.dynamicWidth(context, .01)),
                    child: Container(
                        // color: Colors.pink,
                        child:
                            text(context, details, 13, AppColors.customBlack)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:  EdgeInsets.only(left: AppSizes.dynamicWidth(context, .01)),
                    child: Container(
                        // color: Colors.red,
                        child:
                            text(context, duration, 13, AppColors.customBlack)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:  EdgeInsets.only(left: AppSizes.dynamicWidth(context, .02)),
                    child: Container(
                        // color: Colors.amber,
                        child: text(context, amount, 13, AppColors.green)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:  EdgeInsets.only(left: AppSizes.dynamicWidth(context, .045)),
                    child: Container(
                        // color: Colors.brown,
                        child: Row(
                      children: [
                        text(context, totalBalance, 13, AppColors.customBlack),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.arrow_downward,
                              color: AppColors.green,
                              size: AppSizes.dynamicHeight(context, .025),
                            ))
                      ],
                    )),
                  ),
                ),
              ],
            ),
            Divider(color: dividerColor)
          ],
        ),
      ),
    );
  }

  Widget profitContainer(
      String boldText, String normaltext, Color boldtextColor) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 139.h,
      width: 240.w,
      // width:size.width * .15,
      // height:size.height * .15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: AppColors.darkGrey, width: 2.w)),
      padding:
          EdgeInsets.symmetric(horizontal: AppSizes.dynamicWidth(context, .01)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text(context, normaltext, 24.sp, AppColors.greyText,
              alignText: TextAlign.center),
          boldPopinText(boldText, 48.sp, boldtextColor),
        ],
      ),
    );
  }

  Widget simpleContainer(
    String amount,
  ) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .17,
      height: size.height * .15,
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(15.r),
        // border: Border.all(color: AppColors.darkGrey, width: 2.w)
      ),
      padding:
          EdgeInsets.symmetric(horizontal: AppSizes.dynamicWidth(context, .01)),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text(
              context, 'Enter amount\nto withrdraw',
              AppSizes.dynamicWidth(context, .012), AppColors.customWhite,
              // alignText: TextAlign.center
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: text(context, amount, AppSizes.dynamicWidth(context, .012),
                  AppColors.customWhite,
                  alignText: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }

  Widget amoutEnter(String title) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: AppSizes.dynamicWidth(context, .03)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(
            context, title, AppSizes.dynamicWidth(context, .01),
            AppColors.greyText,
            // alignText: TextAlign.center
          ),
          Container(
            height: 54.h,
            width: 168.w,
            decoration: BoxDecoration(
                // border: Border.all(color: AppColors.lightGrey),
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextField(
                cursorColor: AppColors.green,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 5, left: 10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
