// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../../utils/config.dart';

class TeacherWallet extends StatefulWidget {
  const TeacherWallet({Key? key}) : super(key: key);

  @override
  State<TeacherWallet> createState() => _TeacherWalletState();
}

class _TeacherWalletState extends State<TeacherWallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.customWhite,
        borderRadius: BorderRadius.circular(30.r),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.dynamicWidth(context, .03),
          vertical: AppSizes.dynamicHeight(context, .02)),
          
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.only(top: AppSizes.dynamicHeight(context, .05)),
                // color: AppColors.customYellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 232.h,
                      width: 424.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/png/card2.png')),
                          color: AppColors.navyBlue,
                          borderRadius: BorderRadius.circular(30.w)),
                      padding: EdgeInsets.symmetric(
                          vertical: AppSizes.dynamicHeight(context, .02),
                          horizontal: AppSizes.dynamicWidth(context, .02)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              text(
                                  context,
                                  'Balance',
                                  AppSizes.dynamicWidth(context, .007),
                                  AppColors.customWhite),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              boldPopinText(
                                  'Tk. 1437.00',
                                  AppSizes.dynamicWidth(context, .025),
                                  AppColors.customWhite)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(
                                  context,
                                  'Last week       (-405.00)',
                                  AppSizes.dynamicWidth(context, .007),
                                  AppColors.blue),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15),
                      child: text(
                          context,
                          'Transaction History',
                          AppSizes.dynamicWidth(context, .015),
                          AppColors.customBlack),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: double.infinity,
                        // color: Colors.amber,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: AppSizes.dynamicHeight(context, .56),
                            width: double.infinity,
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                color: AppColors.customWhite,
                                // border: Border.all(color: AppColors.green),
                                borderRadius: BorderRadius.circular(30.r)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: AppSizes.dynamicHeight(
                                          context, .01)),
                                  child: headingRow(AppColors.lightGrey),
                                ),
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
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
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                // color: AppColors.blue,

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Icon(Icons.notification_important_sharp,color: AppColors.green,),
                         CircleAvatar(
                                  backgroundColor: AppColors.green,
                                  radius: AppSizes.dynamicHeight(context, .03),
                                  child: CircleAvatar(
                                    radius: AppSizes.dynamicHeight(context, .028),
                                    backgroundImage:
                                        AssetImage('assets/png/charles.png'),
                                  ),
                                ),
                      ],),
                    ),
                    Expanded(
                        child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: AppSizes.dynamicHeight(context, .028)),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                simpleContainer('00.00'),
                                amoutEnter('Total Balance'),
                                amoutEnter('Amount to\nbewithdrawn'),
                                amoutEnter('Remaining balance'),
                                amoutEnter('Transfer to '),
                                amoutEnter('Account number'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: AppSizes.dynamicWidth(
                                              context, .03)),
                                      child: Container(
                                        height: 54.h,
                                        width: 168.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.green,
                                            border: Border.all(
                                                color: AppColors.customBlack,
                                                width: 2.w),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Center(
                                          child: text(context, 'Withdraw', 13,
                                              AppColors.customWhite),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget simpleContainer(
    String amount,
  ) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 369.w,
      height: 215.h,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/png/card1.png')),
        color: AppColors.green,
        borderRadius: BorderRadius.circular(15.r),
        // border: Border.all(color: AppColors.darkGrey, width: 2.w)
      ),
      padding:
          EdgeInsets.symmetric(horizontal: AppSizes.dynamicWidth(context, .01),
          vertical: AppSizes.dynamicHeight(context, .05)
          ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(
                  context, 'Enter amount\nto withrdraw',
                  AppSizes.dynamicWidth(context, .012), AppColors.customWhite,
                  // alignText: TextAlign.center
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: text(context, amount, AppSizes.dynamicWidth(context, .012),
                      AppColors.customWhite,
                      alignText: TextAlign.center),
                ),
              ],
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
                color: AppColors.greyText,
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextField(
                cursorColor: AppColors.green,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 10, left: 10)),
              ),
            ),
          ),
        ],
      ),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: AppSizes.dynamicWidth(context, .04)),
                    child: Container(
                        // color: Colors.amber,
                        child: text(context, amount, 13, AppColors.green)),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: AppSizes.dynamicWidth(context, .04)),
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
}
