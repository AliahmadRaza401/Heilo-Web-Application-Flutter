// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuizReportWeb extends StatefulWidget {
  const QuizReportWeb({Key? key}) : super(key: key);

  @override
  State<QuizReportWeb> createState() => _QuizReportWebState();
}

class _QuizReportWebState extends State<QuizReportWeb> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                height: double.infinity,
                // color: Colors.amber,
                padding: EdgeInsets.symmetric(vertical:25,horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        quizContainer(
                            '2011', 'TOTAL QUIZ CONDUCTED', AppColors.greyText),
                        quizContainer('4211', 'TOTAL QUIZ AVAILABLE',
                            AppColors.greytextText),
                        quizContainer(
                            '2511', 'TOTAL STUDENT APPEARED ', AppColors.green),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Spacer(flex: 1),
                        text(context, 'Total Quiz\nConducted', 20,
                            AppColors.green),
                        Spacer(
                          flex: 6,
                        ),
                        Container(
                          height: 37.h,
                          width: size.width * .11,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.greyBorder, width: 2),
                              color: AppColors.customWhite,
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              text(context, 'Subject', 10, AppColors.greyText),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: AppColors.green,
                              ),
                              VerticalDivider(
                                thickness: 3,
                              ),
                              text(context, 'Class', 10, AppColors.greyText),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: AppColors.green,
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Container(
                          height: 34.75.h,
                          width: 146.5.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.green),
                              color: AppColors.customWhite,
                              borderRadius: BorderRadius.circular(100)),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              text(context, 'Last 7 Days', 10,
                                  AppColors.greyText),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: AppColors.green,
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 1),
                      ],
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                          width: size.width ,
                          padding: EdgeInsets.only(
                              top: 30, left: 30, right: 30, bottom: 10),
                          child: barChart()),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                height: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30.r))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 10,
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
                        footer: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: text(
                              context,
                              'AVERAGE RATING ',
                              MediaQuery.of(context).size.width * .01,
                              AppColors.greyText),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              height: 37.h,
                              width: size.width * .11,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                  color: AppColors.greyBorder, width: 2),
                                  color: AppColors.customWhite,
                                  borderRadius: BorderRadius.circular(100)),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  text(
                                      context, 'Subject', 10, AppColors.greyText),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 20,
                                    color: AppColors.green,
                                  ),
                                  VerticalDivider(
                                    thickness: 3,
                                  ),
                                  text(context, 'Class', 10, AppColors.greyText),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 20,
                                    color: AppColors.green,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 34.75.h,
                              width: 146.5.w,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.green),
                                  color: AppColors.customWhite,
                                  borderRadius: BorderRadius.circular(100)),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  text(context, 'Last 7 Days', 10,
                                      AppColors.greyText),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 20,
                                    color: AppColors.green,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Container(
                          width: double.infinity,
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
                    ))
                  ],
                ),
              )),
        ],
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
                radius: MediaQuery.of(context).size.height * .04,
                backgroundImage: AssetImage(img),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: text(context, name, 14.sp, AppColors.customBlack),
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
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 5,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Container(
                    // color:Colors.amber,
                    width:  AppSizes.dynamicWidth(context, .16),
                    child: Wrap(
                      children: [
                        text(context, review, 14.sp, AppColors.greyText,maxLines: 3,alignText: TextAlign.justify),
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
      width: 304.w,
      height: 150.h,
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
