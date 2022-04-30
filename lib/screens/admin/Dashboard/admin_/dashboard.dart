// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/bar_chart.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../utils/config.dart';


class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .03,
          bottom: MediaQuery.of(context).size.height * .02,
          left: MediaQuery.of(context).size.width * .02,
        ),
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
                      text(
                          context, 'NUMBER OF STUDENTS', 30, AppColors.greyText,
                          bold: FontWeight.bold),
                      text(context, '2511', 30, AppColors.customBlack,
                          bold: FontWeight.bold),
                      text(
                          context, 'NUMBER OF TEACHERS', 30, AppColors.greyText,
                          bold: FontWeight.bold),
                      text(context, '2511', 30, AppColors.customGreen,
                          bold: FontWeight.bold),
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
                          radius: 60.0,
                          lineWidth: 10,
                          percent: 0.2,
                          center: Text("20%"),
                          progressColor: Colors.green,
                          circularStrokeCap: CircularStrokeCap.round,
                          footer: text(
                              context,
                              'GROWTH',
                              MediaQuery.of(context).size.width * .013,
                              AppColors.greyText),
                        ),
                        CircularPercentIndicator(
                          radius: 60.0,
                          lineWidth: 10,
                          percent: 0.5,
                          center: Text("50%"),
                          progressColor: Colors.green,
                          footer: text(
                              context,
                              'CONVERSION',
                              MediaQuery.of(context).size.width * .013,
                              AppColors.greyText),
                        )
                      ],
                    ),
                  ),
                ),

                //graph container
                Expanded(
                  flex: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.width * .13,
                    // width: size.width * .1,
                    child: Stack(
                      children: [
                        Positioned(
                          // bottom: 0,
                          child: Container(
                            width: size.width * .55,
                           
                            padding: EdgeInsets.only(
                                top: 30, left: 30, right: 30, bottom: 10),
                            child:barChart()
                            
                          ),
                        ),
                        Container(
                        
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(context, 'ACTIVITY SCALE ', 18,
                                  AppColors.greyText),
                              text(context, 'in hours', 16, AppColors.greyText),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          child: Container(
                            height: 37.h,
                            width: 156.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.green),
                                color: AppColors.customWhite,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    bottomLeft: Radius.circular(100))),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                text(context, 'Last 7 Days', 12,
                                    AppColors.greyText),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: Container(
              // color: Colors.amber,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 400,
                    width: size.width * .65,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                              height: size.height * .58,
                              width: size.width * .65,
                              decoration: BoxDecoration(
                                  color: AppColors.lightGrey,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.r),
                                      bottomRight: Radius.circular(30.r),
                                      topRight: Radius.circular(30.r))),
                              padding: EdgeInsets.only(
                                  top: 30, left: 30, right: 30, bottom: 10),
                              child: ListView.builder(
                                  itemCount: 7,
                                  itemBuilder: (context, index) {
                                    return detailsRowa();
                                  })),
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
                            child: text(context, 'Upcoming Sessions', 15,
                                AppColors.greyText),
                          ),
                        ),
                        Positioned(
                          right: 40,
                          child: Container(
                            height: 51.h,
                            width: 262.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.green),
                                color: AppColors.customWhite,
                                borderRadius: BorderRadius.circular(100)),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 400,
                        // width: size.width * .65,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                  height: size.height * .58,
                                  width: size.width * .28,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30.r),
                                        bottomRight: Radius.circular(30.r),
                                      )),
                                  padding: EdgeInsets.only(
                                      top: 30, left: 30, right: 30, bottom: 10),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 1),
                                    child: Column(
                                      children: [
                                        Container(
                                          // height: 30,
                                          // color: Colors.amber,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  text(
                                                      context,
                                                      'Day',
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          .01,
                                                      AppColors.greyText),
                                                  text(
                                                      context,
                                                      'Classes completed',
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          .01,
                                                      AppColors.greyText),
                                                  text(
                                                      context,
                                                      'Growth',
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          .01,
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
                                                return totalCompleteRow(
                                                    'Thursday', '15', '2.5%');
                                              }),
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                            Container(
                              height: 51.h,
                              width: 316.w,
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
                                    14,
                                    14,
                                    null,
                                    AppColors.greyText,
                                    AppColors.green,
                                    false),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              child: Container(
                                height: 37.h,
                                width: 156.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.green),
                                    color: AppColors.customWhite,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomLeft: Radius.circular(100))),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    text(context, 'Last 7 Days', 12,
                                        AppColors.greyText),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ));
  }

  Widget totalCompleteRow(String day, String clases, String growth) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(context, day, MediaQuery.of(context).size.width * .01,
                AppColors.greyText),
            text(context, clases, MediaQuery.of(context).size.width * .01,
                AppColors.green),
            text(context, growth, MediaQuery.of(context).size.width * .01,
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
        width: size.width * .62,
        height: 51.h,
        decoration: BoxDecoration(
            color: AppColors.customWhite,
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
                height: 34.h,
                width: 157.w,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.green),
                    color: AppColors.customWhite,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child:
                      text(context, '27th July, 2021', 10, AppColors.greyText),
                )),
            SizedBox(
              width: size.width * .008,
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'ID 11121', 15, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Ruhul Tusar', 15, AppColors.greyText),
            VerticalDivider(
              color: AppColors.green,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: text(context, 'Topic- Polygons I Gerometry I Maths B',
                      15, AppColors.greyText),
                ),
              ),
            ),
            VerticalDivider(
              color: AppColors.green,
            ),
            text(context, 'Time- 4:30-5.30 pm', 15, AppColors.green),
          ],
        ),
      ),
    );
  }
}



class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}