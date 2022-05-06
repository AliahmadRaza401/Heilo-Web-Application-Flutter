// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

class PaymentPageMobile extends StatefulWidget {
  const PaymentPageMobile({Key? key}) : super(key: key);

  @override
  State<PaymentPageMobile> createState() => _PaymentPageMobileState();
}

class _PaymentPageMobileState extends State<PaymentPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r),
        ),
        // height: AppSizes.dynamicHeight(context, .7),
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              height: AppSizes.dynamicHeight(context, .95),
              padding: EdgeInsets.all(5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(context, 'Payment Request ', 46.sp, AppColors.green),
                    Container(
                      width: AppSizes.dynamicWidth(context, 1),
                      height: AppSizes.dynamicHeight(context, .3),
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: AppSizes.dynamicHeight(context, .01)),
                        child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: ((context, index) {
                              return paymentsRow(
                                  'assets/png/charles.png',
                                  'Ruhul Amin Tusar',
                                  '11/08/2021 12:30 pm',
                                  'Bkash',
                                  '01824696900',
                                  '500',
                                  '510',
                                  'Pending');
                            })),
                      ),
                    ),
                    Container(

                      height: 400,
                      width: double.infinity,
                      color: Colors.amber,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: AppSizes.dynamicHeight(context, .42),
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
                                            context, .06)),
                                    child: headingRow(AppColors.customWhite),
                                  ),
                                  Container(
                                    height: 200,
                                    width: 700,
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
                            top: AppSizes.dynamicHeight(context, .035),
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
                    // SizedBox(
                    //   width: double.infinity,
                    //   height: AppSizes.dynamicHeight(context, .3),

                    //   // color: Colors.pink,
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(
                    //             right: AppSizes.dynamicWidth(context, .01)),
                    //         child:
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(
                    //             left: AppSizes.dynamicWidth(context, .01)),
                    //         child: SizedBox(
                    //           height: AppSizes.dynamicHeight(context, .3),
                    //           // height: double.infinity,
                    //           // color: Colors.amber,
                    //           child: Stack(
                    //             children: [
                    //               Align(
                    //                 alignment: Alignment.bottomCenter,
                    //                 child: Container(
                    //                   height:
                    //                       AppSizes.dynamicHeight(context, .42),
                    //                   width: double.infinity,
                    //                   padding: EdgeInsets.all(10),
                    //                   decoration: BoxDecoration(
                    //                       color: AppColors.customWhite,
                    //                       border: Border.all(
                    //                           color: AppColors.green),
                    //                       borderRadius:
                    //                           BorderRadius.circular(30.r)),
                    //                   child: Column(
                    //                     children: [
                    //                       Padding(
                    //                         padding: EdgeInsets.only(
                    //                             top: AppSizes.dynamicHeight(
                    //                                 context, .06)),
                    //                         child:
                    //                             headingRow(AppColors.noColor),
                    //                       ),
                    //                       Expanded(
                    //                           child: ListView.builder(
                    //                               itemCount: 10,
                    //                               itemBuilder:
                    //                                   ((context, index) {
                    //                                 return paymentDetailsRow(
                    //                                     AppColors.lightGrey,
                    //                                     '#1112',
                    //                                     'Safin Riaz',
                    //                                     '11-09-2021',
                    //                                     'Tk. 1000');
                    //                               })))
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //               Positioned(
                    //                 top: AppSizes.dynamicHeight(context, .035),
                    //                 left: 0,
                    //                 right: 0,
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.center,
                    //                   children: [
                    //                     paymentStatus('TK. 50,000', 'Total Due',
                    //                         AppColors.customWhite),
                    //                   ],
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            // Expanded(
            //     flex: 2,
            //     child: Container(
            //       padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            //       height: double.infinity,
            //       decoration: BoxDecoration(
            //           color: AppColors.lightGrey,
            //           borderRadius:
            //               BorderRadius.only(topLeft: Radius.circular(30.r))),

            //   child: Column(children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical:15),
            //       child: Container(
            //   height: 60.h,
            //   width: 407.w,
            //   decoration: BoxDecoration(
            //         // border: Border.all(color: AppColors.green),
            //         color: AppColors.customWhite,
            //         borderRadius: BorderRadius.circular(100)),
            //   padding: EdgeInsets.symmetric(horizontal: 10),
            //   child: Align(
            //       alignment: Alignment.centerRight,
            //       child: TextField(
            //         cursorColor: AppColors.green,
            //         decoration: InputDecoration(
            //             border: InputBorder.none,
            //             suffixIcon: Icon(
            //               Icons.search,
            //               color: AppColors.greyText,
            //             ),
            //             contentPadding: EdgeInsets.only(top: 5, left: 10)),
            //       ),
            //   ),
            // ),
            //     ),
            // Expanded(child: ListView.builder(
            //   itemCount: 15,
            //   itemBuilder:((context, index) {
            //     return searchResultsRow('Ruhul Amin Tusar ', '01824696930', 'writetusar@gmail.com', 'active');
            //   })))
            //   ],),
            //     )),
          ],
        ));
  }

  Widget paymentStatus(
      String boldText, String normaltext, Color boldtextColor) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 294.w,
      height: 103.h,
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
              text(context, normaltext, 17, AppColors.customWhite,
                  alignText: TextAlign.center),
              Container(
                child: Row(
                  children: [
                    text(context, 'last 7 days', 12, AppColors.customBlack,
                        alignText: TextAlign.center),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.customWhite,
                    )
                  ],
                ),
              )
            ],
          ),
          boldPopinText(boldText, 30, boldtextColor),
        ],
      ),
    );
  }

  Widget paymentsRow(String image, String name, String date, String method,
      String id, String availableBalance, String amount, String status) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * 1,
        height: 46.h,
        decoration: BoxDecoration(
            color: AppColors.lightGreen,
            borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: AppSizes.dynamicHeight(context, .02),
              backgroundImage: AssetImage(image),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(context, name, 24.sp, AppColors.customBlack),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: text(context, date, 24.sp, AppColors.greyText),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(context, method, 24.sp, AppColors.customBlack),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: text(context, id, 24.sp, AppColors.greyText),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    text(context, 'Requested Amount: ', 24.sp,
                        AppColors.greyText),
                    text(context, amount, 24.sp, AppColors.customBlack),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: text(context, 'Available Balance: ', 24.sp,
                          AppColors.greyText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: text(context, availableBalance, 24.sp,
                          AppColors.customBlack),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 20.h,
              width: 276.w,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.green),
                  color: AppColors.customWhite,
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  text(context, status, 24.sp, AppColors.greyText),
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
            VerticalDivider(),
            text(context, 'Details', 13, AppColors.customBlack),
            VerticalDivider(),
            text(context, 'Date', 13, AppColors.customBlack),
            VerticalDivider(),
            text(context, 'Amount', 13, AppColors.customBlack),
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
                text(context, serial, 13, AppColors.customBlack),
                text(context, details, 13, AppColors.customBlack),
                text(context, date, 13, AppColors.customBlack),
                text(context, amount, 13, AppColors.customBlack),
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
