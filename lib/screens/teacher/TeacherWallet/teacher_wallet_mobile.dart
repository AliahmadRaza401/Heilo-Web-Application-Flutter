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
                  height: double.infinity,
                  padding:
                      EdgeInsets.only(top: AppSizes.dynamicHeight(context, .0)),
                  // color: AppColors.customYellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        AppSizes.dynamicWidth(context, .03),
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
                                          AppSizes.dynamicWidth(context, .02),
                                          AppColors.blue),
                                      boldPopinText(
                                          'Tk. 1437.00',
                                          AppSizes.dynamicWidth(context, .04),
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
                                          AppSizes.dynamicWidth(context, .02),
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
                                              AppSizes.dynamicWidth(
                                                  context, .02),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: text(
                            context,
                            'Transaction History',
                            AppSizes.dynamicWidth(context, .04),
                            AppColors.customBlack),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: AppSizes.dynamicHeight(context, .56),
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
                                SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.customGrey,
                                      borderRadius: BorderRadius.circular(0)),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.h,
                                      horizontal:
                                          AppSizes.dynamicWidth(context, .01)),
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
                      )
                    ],
                  ),
                )),
            // Expanded(
            //     flex: 2,
            //     child: Container(
            //       height: double.infinity,
            //       // color: AppColors.blue,

            //       child: Column(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.only(bottom: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.end,
            //               children: [
            //                 Icon(
            //                   Icons.notification_important_sharp,
            //                   color: AppColors.green,
            //                 ),
            //                 CircleAvatar(
            //                   backgroundColor: AppColors.green,
            //                   radius: AppSizes.dynamicHeight(context, .03),
            //                   child: CircleAvatar(
            //                     radius: AppSizes.dynamicHeight(context, .028),
            //                     backgroundImage:
            //                         AssetImage('assets/png/charles.png'),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Expanded(
            //               child: Container(
            //             width: double.infinity,
            //             child: Padding(
            //               padding: EdgeInsets.only(
            //                   bottom: AppSizes.dynamicHeight(context, .028)),
            //               child: Container(
            //                 width: double.infinity,
            //                 decoration: BoxDecoration(
            //                     color: AppColors.customGrey,
            //                     borderRadius: BorderRadius.circular(30.r)),
            //                 child: Padding(
            //                   padding: EdgeInsets.only(bottom: 30),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                     children: [
            //                       simpleContainer('00.00'),
            //                       amoutEnter('Total Balance'),
            //                       amoutEnter('Amount to\nbewithdrawn'),
            //                       amoutEnter('Remaining \n Balance'),
            //                       amoutEnter('Transfer to '),
            //                       amoutEnter('Account number'),
            //                       Row(
            //                         mainAxisAlignment: MainAxisAlignment.end,
            //                         children: [
            //                           Padding(
            //                             padding: EdgeInsets.only(
            //                                 right: AppSizes.dynamicWidth(
            //                                     context, .03)),
            //                             child: Container(
            //                               height: 54.h,
            //                               width: 168.w,
            //                               decoration: BoxDecoration(
            //                                   color: AppColors.green,
            //                                   border: Border.all(
            //                                       color: AppColors.customBlack,
            //                                       width: 2.w),
            //                                   borderRadius:
            //                                       BorderRadius.circular(100)),
            //                               child: Center(
            //                                 child: text(context, 'Withdraw', 13,
            //                                     AppColors.customWhite),
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           )),
            //         ],
            //       ),
            //     )),
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
          text(context, 'Serial  no.', AppSizes.dynamicWidth(context, 0.02),
              AppColors.customBlack),
          VerticalDivider(
            color: AppColors.customWhite,
          ),
          text(context, 'Details', AppSizes.dynamicWidth(context, 0.02),
              AppColors.customBlack),
          VerticalDivider(
            color: AppColors.customWhite,
          ),
          text(context, 'Duration', AppSizes.dynamicWidth(context, 0.02),
              AppColors.customBlack),
          VerticalDivider(
            color: AppColors.customWhite,
          ),
          text(context, 'Amount', AppSizes.dynamicWidth(context, 0.02),
              AppColors.customBlack),
          VerticalDivider(
            color: AppColors.customWhite,
          ),
          text(context, 'Total Balance.', AppSizes.dynamicWidth(context, 0.02),
              AppColors.customBlack),
        ],
      ),
    );
  }

  Widget paymentDetailsRow(Color dividerColor, String serial, String details,
      String duration, String amount, String totalBalance) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .82,
        height: 61.h,
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
                        // Padding(
                        //     padding: EdgeInsets.only(left: 5),
                        //     child: Icon(
                        //       Icons.arrow_downward,
                        //       color: AppColors.green,
                        //       size: AppSizes.dynamicHeight(context, .025),
                        //     ))
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