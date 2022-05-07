// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_mobile.dart';
import 'package:heilo/screens/admin/admin_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class QuizReportMobile extends StatefulWidget {
  const QuizReportMobile({Key? key}) : super(key: key);

  @override
  State<QuizReportMobile> createState() => _QuizReportMobileState();
}

class _QuizReportMobileState extends State<QuizReportMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
        child: Container(
                  height: AppSizes.dynamicHeight(context, .8),
                  // color: Colors.amber,
    
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: AppSizes.dynamicHeight(context, .6),
                  // color: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal:2,vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          quizContainer(
                              '2011', 'TOTAL QUIZ CONDUCTED', AppColors.greyText),
                          quizContainer('4211', 'TOTAL QUIZ AVAILABLE',
                              AppColors.greytextText),
                          quizContainer(
                              '2511', 'TOTAL STUDENT APPEARED ', AppColors.green),
                        ],
                      ),
                      AppSizes.heightBox(context,.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppSizes.widthBox(context,.02),
                          text(context, 'Total Quiz\nConducted', 60.sp,
                              AppColors.green),
                          // Spacer(
                          //   flex: 6,
                          // ),
                          // Container(
                          //   height: 37.h,
                          //   width: size.width * .11,
                          //   decoration: BoxDecoration(
                          //       border: Border.all(
                          //           color: AppColors.darkGrey, width: 2),
                          //       color: AppColors.customWhite,
                          //       borderRadius: BorderRadius.circular(100)),
                          //   padding: EdgeInsets.symmetric(horizontal: 10),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //     children: [
                          //       text(context, 'Subject', 10.sp, AppColors.greyText),
                          //       Icon(
                          //         Icons.keyboard_arrow_down,
                          //         size: 20,
                          //         color: AppColors.green,
                          //       ),
                          //       VerticalDivider(
                          //         thickness: 3,
                          //       ),
                          //       text(context, 'Class', 10.sp, AppColors.greyText),
                          //       Icon(
                          //         Icons.keyboard_arrow_down,
                          //         size: 20.sp,
                          //         color: AppColors.green,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Spacer(
                          //   flex: 1,
                          // ),
                          // Container(
                          //   height: 34.75.h,
                          //   width: 146.5.w,
                          //   decoration: BoxDecoration(
                          //       border: Border.all(color: AppColors.green),
                          //       color: AppColors.customWhite,
                          //       borderRadius: BorderRadius.circular(100)),
                          //   padding: EdgeInsets.symmetric(horizontal: 10),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //     children: [
                          //       text(context, 'Last 7 Days', 10.sp,
                          //           AppColors.greyText),
                          //       Icon(
                          //         Icons.keyboard_arrow_down,
                          //         size: 20,
                          //         color: AppColors.green,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Spacer(flex: 1),
                        ],
                      ),
                      Container(
                          width: size.width * .95,
                          height: 200,
                          padding: EdgeInsets.only(
                              top: 10, left: 10, right: 10, bottom: 0),
                          child: barChart())
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  
                  decoration: BoxDecoration(
                      // color: AppColors.blue,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30.r))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(0),
                          child: CircularPercentIndicator(
                            radius: 30.0,
                            lineWidth: 5,
                            percent: 0.2,
                            center: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                boldPopinText('4.8',58.sp, AppColors.green),
                                Icon(
                                  Icons.star,
                                  color: AppColors.customYellow,
                                )
                              ],
                            ),
                            progressColor: AppColors.green,
                            circularStrokeCap: CircularStrokeCap.round,
                            footer: text(
                                context,
                                'AVERAGE RATING ',
                                30.sp,
                                AppColors.greyText),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top:5),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.only(right: 5),
                        //         child: Container(
                        //           height: 37.h,
                        //           width: size.width * .11,
                        //           decoration: BoxDecoration(
                        //               border: Border.all(
                        //                   color: AppColors.darkGrey, width: 2),
                        //               color: AppColors.customWhite,
                        //               borderRadius: BorderRadius.circular(100)),
                        //           padding: EdgeInsets.symmetric(horizontal: 10),
                        //           child: Row(
                        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //             children: [
                        //               text(
                        //                   context, 'Subject', 16.sp, AppColors.greyText),
                        //               Icon(
                        //                 Icons.keyboard_arrow_down,
                        //                 size: 20,
                        //                 color: AppColors.green,
                        //               ),
                        //               VerticalDivider(
                        //                 thickness: 3,
                        //               ),
                        //               text(context, 'Class', 16.sp, AppColors.greyText),
                        //               Icon(
                        //                 Icons.keyboard_arrow_down,
                        //                 size: 20,
                        //                 color: AppColors.green,
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //       Padding(
                        //         padding: const EdgeInsets.only(left: 10),
                        //         child: Container(
                        //           height: 34.75.h,
                        //           width: 146.5.w,
                        //           decoration: BoxDecoration(
                        //               border: Border.all(color: AppColors.green),
                        //               color: AppColors.customWhite,
                        //               borderRadius: BorderRadius.circular(100)),
                        //           padding: EdgeInsets.symmetric(horizontal: 10),
                        //           child: Row(
                        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //             children: [
                        //               text(context, 'Last 7 Days', 10,
                        //                   AppColors.greyText),
                        //               Icon(
                        //                 Icons.keyboard_arrow_down,
                        //                 size: 20,
                        //                 color: AppColors.green,
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Container(
                            height: 100,
                          width: size.width *.95,
                          // color: AppColors.,
                          child: ListView.builder(
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return ratingRow(
                                    'assets/png/charles.png',
                                    'Ruhul Amin Tusar',
                                    3.5,
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin.');
                              })),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ratingRow(String img, String name, double rating, String review) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.height * .025,
                backgroundImage: AssetImage(img),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: text(context, name, 24.sp, AppColors.customBlack),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 10,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Container(
                    // color:Colors.amber,
                    width:  AppSizes.dynamicWidth(context, .7),
                    child: Wrap(
                      children: [
                        text(context, review, 24.sp, AppColors.greyText,maxLines: 3,alignText: TextAlign.justify),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget quizContainer(
      String boldText, String normaltext, Color boldtextColor) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 444.w,
      height: 80.h,
      // width: size.width * .19,
      // height: size.height * .15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          // color: AppColors.customYellow,
          border: Border.all(color: AppColors.darkGrey, width: 4.w)),
      // padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boldPopinText(boldText, 72.sp, boldtextColor),
          text(context, normaltext, 22.sp, AppColors.greyText,
              alignText: TextAlign.center),
        ],
      ),
    );
  }
}
