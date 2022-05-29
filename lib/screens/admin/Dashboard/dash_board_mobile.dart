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
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //         size: 30, // Changing Drawer Icon Size
        //       ),
        //       onPressed: () {
        //         adminScafoldKey.currentState!.openDrawer();
        //       },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
     
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
      // drawer: AdminDrawer(),
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
                          text(context, 'NUMBER OF STUDENTS', 46.sp,
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
                          text(context, 'NUMBER OF TEACHERS', 46.sp,
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
                                style: TextStyle(fontSize: 45.sp),
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
                                style: TextStyle(fontSize: 45.sp),
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
                      // Container(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       text(context, 'ACTIVITY SCALE ', 34.sp,
                      //           AppColors.greyText),
                      //       text(context, 'in hours', 14.sp, AppColors.greyText),
                      //     ],
                      //   ),
                      // ),
                      // Positioned(
                      //   right: 20,
                      //   child: Container(
                      //     height: 37.h,
                      //     width: 156.w,
                      //     decoration: BoxDecoration(
                      //         border: Border.all(color: AppColors.green),
                      //         color: AppColors.customWhite,
                      //         borderRadius: BorderRadius.only(
                      //             topLeft: Radius.circular(100),
                      //             bottomLeft: Radius.circular(100))),
                      //     padding: EdgeInsets.symmetric(horizontal: 10),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //       children: [
                      //         text(context, 'Last 7 Days', 14.sp,
                      //             AppColors.greyText),
                      //         Icon(
                      //           Icons.keyboard_arrow_down,
                      //           // size: 20,
                      //           color: AppColors.green,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                upCommingSessions(),
                AppSizes.heightBox(context, .02),
                totalClasses()
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [, Expanded(child: )],
                // )
              ],
            ),
          )),
    );
  }

  Widget upCommingSessions() {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.amber,
      height: AppSizes.dynamicHeight(context, .3),
      width: size.width * .95,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
                height: size.height * .285,
                width: size.width * .95,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 2),
                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return detailsRowa();
                    })),
          ),
          Container(
            height: 21.h,
            width: 450.w,
            decoration: BoxDecoration(
                color: AppColors.customWhite,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
            child: Center(
              child:
                  text(context, 'Upcoming Sessions', 40.sp, AppColors.greyText),
            ),
          ),
          // Positioned(
          //   right: 40,
          //   child: Container(
          //     height: 51.h,
          //     width: 262.w,
          //     decoration: BoxDecoration(
          //         border: Border.all(color: AppColors.green),
          //         color: AppColors.customWhite,
          //         borderRadius: BorderRadius.circular(100)),
          //     padding: EdgeInsets.symmetric(horizontal: 10),
          //     child: Align(
          //       alignment: Alignment.centerRight,
          //       child: TextField(
          //         cursorColor: AppColors.green,
          //         decoration: InputDecoration(
          //             border: InputBorder.none,
          //             suffixIcon: Icon(
          //               Icons.search,
          //               color: AppColors.green,
          //             ),
          //             contentPadding: EdgeInsets.only(top: 5, left: 10)),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .82,
        height: 30.h,
        decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Container(
                height: 20.h,
                width: 160.w,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.green),
                    color: AppColors.customWhite,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: text(
                      context, '27th July, 2021', 12.sp, AppColors.greyText),
                )),
            SizedBox(
              width: size.width * .008,
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'ID 11121', 7, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Ruhul Tusar', 7, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: text(context, 'Topic- Polygons I Gerometry I Maths B',
                      7, AppColors.greyText),
                ),
              ),
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Time- 4:30-5.30 pm', 7, AppColors.green),
          ],
        ),
      ),
    );
  }
}
