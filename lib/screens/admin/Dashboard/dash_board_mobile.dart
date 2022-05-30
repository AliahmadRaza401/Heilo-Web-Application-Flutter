// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart.dart';
import 'package:heilo/screens/admin/admin_drawer.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../utils/config.dart';

final GlobalKey<ScaffoldState> adminScafoldKey = GlobalKey();

class AdminDashboardMobile extends StatefulWidget {
  const AdminDashboardMobile({Key? key}) : super(key: key);

  @override
  State<AdminDashboardMobile> createState() => _AdminDashboardMobileState();
}

class _AdminDashboardMobileState extends State<AdminDashboardMobile> {
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
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(30.r),
          ),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .03,
            bottom: MediaQuery.of(context).size.height * .05,
            left: MediaQuery.of(context).size.width * .02,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(context, 'NUMBER OF STUDENTS', 65.sp,
                              Color(0xffC4C4C4),
                              bold: FontWeight.bold),
                          Text(
                            '2511',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff7D7C7C),
                                fontSize: 72.sp,
                                fontWeight: FontWeight.bold),
                          ), //0xffC4C4C4
                          text(context, 'NUMBER OF TEACHERS', 65.sp,
                              Color(0xffC4C4C4),
                              bold: FontWeight.bold),
                          Text(
                            '2511',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff01B489),
                                fontSize: 72.sp,
                                fontWeight: FontWeight.bold),
                          ), //
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.width * .15,
                        //  width:  MediaQuery.of(context).size.width *.013,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircularPercentIndicator(
                              radius: 20.0,
                              lineWidth: 5,
                              percent: 0.2,
                              center: Text(
                                "20%",
                                style: TextStyle(fontSize: 65.sp),
                              ),
                              progressColor: AppColors.blue,
                              circularStrokeCap: CircularStrokeCap.round,

                              // footer: text(
                              //     context,
                              //     'GROWTH',
                              //     MediaQuery.of(context).size.width * .005,
                              //     AppColors.greyText),
                            ),
                            CircularPercentIndicator(
                              radius: 20,
                              lineWidth: 5,
                              percent: 0.5,
                              center: Text(
                                "50%",
                                style: TextStyle(fontSize: 65.sp),
                              ),
                              progressColor: AppColors.green,
                              // footer: text(
                              //     context,
                              //     'CONVERSION',
                              //     40.sp,
                              //     // MediaQuery.of(context).size.width * .005,
                              //     // MediaQuery.of(context).size.width * .013,
                              //     AppColors.greyText),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //graph container

                Container(
                  height: MediaQuery.of(context).size.width * .5,

                  // color:Colors.amber,
                  width: size.width,
                  child: Stack(
                    children: [
                      Container(
                          // width: size.width * .55,
                          padding: EdgeInsets.only(
                              top: 30, left: 30, right: 30, bottom: 10),
                          child: barChart()),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                upCommingSessions(),
                SizedBox(
                  height: 20.h,
                ),
                totalClasses(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          )),
    );
  }

  Widget upCommingSessions() {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.amber,
      // height: AppSizes.dynamicHeight(context, .3),
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            width: 800.w,
            decoration: BoxDecoration(
                color: AppColors.customWhite,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r))),
            child:
                text(context, 'Upcoming Sessions', 65.sp, AppColors.greyText),
          ),
          Container(
            height: 400.h,
            child: ListView(shrinkWrap: true, children: [
              detailsRowa(),
              detailsRowa(),
              detailsRowa(),
              detailsRowa(),
              detailsRowa(),
              detailsRowa(),
              detailsRowa(),
            ]),
          ),
        ],
      ),
      // child: Stack(
      //   children: [
      //     Positioned(
      //       bottom: 0,
      //       child: Container(
      //           height: size.height * .285,
      //           width: size.width * .95,
      //           decoration: BoxDecoration(
      //               color: AppColors.lightGrey,
      //               borderRadius: BorderRadius.only(
      //                   bottomLeft: Radius.circular(30.r),
      //                   bottomRight: Radius.circular(30.r),
      //                   topRight: Radius.circular(30.r))),
      //           padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 2),
      //           child: ListView.builder(
      //               itemCount: 7,
      //               itemBuilder: (context, index) {
      //                 return detailsRowa();
      //               })),
      //     ),
      //     Container(
      //       height: 60.h,
      //       width: 600.w,
      //       decoration: BoxDecoration(
      //           color: AppColors.customWhite,
      //           borderRadius: BorderRadius.only(
      //               topRight: Radius.circular(50.r),
      //               bottomRight: Radius.circular(50.r))),
      //       child: text(context, 'Upcoming Sessions', 65.sp, AppColors.greyText),
      //     ),
      //   ],
      // ),
    );
  }

  Widget totalClasses() {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: AppColors.customYellow,
      height: AppSizes.dynamicHeight(context, .35),
      width: size.width * .95,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
                height: size.height * .33,
                width: size.width * .95,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r),
                    )),
                padding:
                    EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Column(
                    children: [
                      Container(
                        // height: 30,
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(
                                    context,
                                    'Day',
                                    MediaQuery.of(context).size.width * .04,
                                    AppColors.greyText),
                                text(
                                    context,
                                    'Classes completed',
                                    MediaQuery.of(context).size.width * .04,
                                    AppColors.greyText),
                                text(
                                    context,
                                    'Growth',
                                    MediaQuery.of(context).size.width * .04,
                                    AppColors.greyText),
                              ],
                            ),
                            Divider(
                              color: AppColors.green,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 14,
                            itemBuilder: (context, index) {
                              return totalCompleteRow('Thursday', '15', '2.5%');
                            }),
                      )
                    ],
                  ),
                )),
          ),
          Container(
            height: 41.h,
            width: 516.w,
            decoration: BoxDecoration(
                color: AppColors.customWhite,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
            child: Center(
              child: richTextWidget(
                  context,
                  'Total Classes',
                  ' Completed',
                  65.sp,
                  65.sp,
                  null,
                  AppColors.greyText,
                  AppColors.green,
                  false),
            ),
          ),
        ],
      ),
    );
  }

  Widget totalCompleteRow(String day, String clases, String growth) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(context, day, MediaQuery.of(context).size.width * .03,
                AppColors.greyText),
            text(context, clases, MediaQuery.of(context).size.width * .03,
                AppColors.green),
            text(context, growth, MediaQuery.of(context).size.width * .03,
                AppColors.green),
          ],
        ),
        Divider(
          color: AppColors.customWhite,
        )
      ],
    );
  }

  Widget detailsRowa() {
    Size size = MediaQuery.of(context).size;

    return Container(
      // width: size.width * .82,
      margin: EdgeInsets.only(top: 15.h),

      height: 150.h,
      decoration: BoxDecoration(
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r)),
      // padding: EdgeInsets.symmetric(horizontal: 5),
      padding:
          EdgeInsets.only(top: 10.h, bottom: 10.h, right: 20.w, left: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 40.h,
                  width: 550.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.green),
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(50.r)),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: text(
                        context, '27th July, 2021', 65.sp, AppColors.greyText),
                  )),
              text(context, 'ID 11121', 65.sp, AppColors.greyText),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(context, 'ID 11121', 65.sp, AppColors.greyText),
              text(context, 'Ruhul Tusar', 65.sp, AppColors.greyText),
            ],
          ),
          text(context, 'Topic- Polygons I Gerometry I Maths B', 65.sp,
              AppColors.greyText),
          text(context, 'Time- 4:30-5.30 pm', 65.sp, AppColors.green),

          // Row(
          //   children: [
          //     Container(
          //         height: 20.h,
          //         width: 160.w,
          //         decoration: BoxDecoration(
          //             border: Border.all(color: AppColors.green),
          //             color: AppColors.customWhite,
          //             borderRadius: BorderRadius.circular(100)),
          //         padding: EdgeInsets.symmetric(horizontal: 10),
          //         child: Center(
          //           child: text(context, '27th July, 2021', 12.sp,
          //               AppColors.greyText),
          //         )),
          //     SizedBox(
          //       width: size.width * .008,
          //     ),
          //     VerticalDivider(
          //       color: AppColors.green,
          //     ),
          //     text(context, 'ID 11121', 7, AppColors.greyText),
          //     VerticalDivider(
          //       color: AppColors.green,
          //     ),
          //     text(context, 'Ruhul Tusar', 7, AppColors.greyText),
          //     VerticalDivider(
          //       color: AppColors.green,
          //     ),
          //     Expanded(
          //       child: Container(
          //         child: Center(
          //           child: text(
          //               context,
          //               'Topic- Polygons I Gerometry I Maths B',
          //               7,
          //               AppColors.greyText),
          //         ),
          //       ),
          //     ),
          //     VerticalDivider(
          //       color: AppColors.green,
          //     ),
          //     text(context, 'Time- 4:30-5.30 pm', 7, AppColors.green),
          //   ],
          // ),
        ],
      ),
    );
  }
}
