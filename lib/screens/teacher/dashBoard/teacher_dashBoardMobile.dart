import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/screens/teacher/drawer/teacher_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';



final GlobalKey<ScaffoldState> teacherScafoldKey = GlobalKey(); 
class TeacherDashBoardMobile extends StatefulWidget {
  const TeacherDashBoardMobile({Key? key}) : super(key: key);

  @override
  State<TeacherDashBoardMobile> createState() => _TeacherDashBoardMobileState();
}

class _TeacherDashBoardMobileState extends State<TeacherDashBoardMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: AppSizes.dynamicWidth(context, 1),
          // height: AppSizes.dynamicHeight(context, 1),
          padding: EdgeInsets.only(
            left: 84.w,
            right: 84.w,
            top: 20.h,
            // bottom: 20.h,
          ),
          // decoration: BoxDecoration(
          //   color: AppColors.customWhite,
          //   borderRadius: BorderRadius.circular(30.r),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // width: AppSizes.dynamicWidth(context, 1),
                height: 200.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          cardWidget('assets/png/card1.png', 0xff000000),
                          cardWidget('assets/png/card2.png', 0xff000000),
                          cardWidget('assets/png/card3.png', 0xff000000),
                          cardWidget('assets/png/card4.png', 0xff000000),
                          cardWidget('assets/png/card1.png', 0xffFFFFFF),
                          cardWidget('assets/png/card2.png', 0xff000000),
                          cardWidget('assets/png/card3.png', 0xff000000),
                          cardWidget('assets/png/card4.png', 0xff000000),
                        ],
                      );
                    }),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     cardWidget('assets/png/card1.png', 0xffFFFFFF),
              //     cardWidget('assets/png/card2.png', 0xff000000),
              //     cardWidget('assets/png/card3.png', 0xff000000),
              //     cardWidget('assets/png/card4.png', 0xff000000),
              //   ],
              // ),
              Container(
                // height: 556.h,
                // width: 333.w,
                // margin: EdgeInsets.only(top: 40.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF8F8F8),
                ),
                // padding: EdgeInsets.only(bottom: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // alignment: Alignment.centerLeft,
                      height: 22.h,
                      width: AppSizes.dynamicHeight(context, 0.2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Upcoming Sessions',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    upcomingsessionData(),
                    SizedBox(
                      height: 20.h,
                    ),
                    upcomingsessionData(),
                    SizedBox(
                      height: 20.h,
                    ),
                    upcomingsessionData(),
                    SizedBox(
                      height: 20.h,
                    ),
                    upcomingsessionData(),
                     SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),

              Container(
                margin:
                    EdgeInsets.only(top: AppSizes.dynamicHeight(context, 0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // width: 700.w,
                      // height: 578.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffF8F8F8),
                      ),
                   
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AppSizes.dynamicHeight(
                              context,
                              0.03,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: AppSizes.dynamicWidth(context, 0.04),
                              top: AppSizes.dynamicHeight(context, 0.03),
                            ),
                            child: text(
                              context,
                              "Notifications",
                              18.0,
                              AppColors.customGreen,
                              bold: false,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          notificationCard(context),
                          notificationCard(context),
                          notificationCard(context),
                          notificationCard(context),
                          notificationCard(context),
                          notificationCard(context),
                          notificationCard(context),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget upcomingsessionData() {
    return Container(
      // margin: EdgeInsets.only(
      //   left: 15.w,
      //   top: 5.h,
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: AppSizes.dynamicWidth(context, 0.3),
            height: AppSizes.dynamicHeight(context, 0.04),
            margin: EdgeInsets.only(
              left: 63.w,
              top: 20.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 0.5,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                '27th July, 2021',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 142.w,
              top: 5.h,
            ),
            child: Row(
              children: [
                Container(
                  height: 80.h,
                  width: 93.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/png/wp2398385 1.png",
                        ),
                      )),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Ruhul Tusar',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          width: AppSizes.dynamicWidth(context, 0.11),
                        ),
                        Container(
                          // padding: EdgeInsets.all(5),
                          height: AppSizes.dynamicHeight(context, 0.03),
                          width: AppSizes.dynamicWidth(context, 0.2),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 1,
                                color: Colors.red,
                              )),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'ID 1234',
                              style: TextStyle(
                                color: Color(0xff444F55),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Topic- ',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Polygons I Gerometry I Maths B',
                          style: TextStyle(
                            color: Color(0xff444F55),
                            fontWeight: FontWeight.w300,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Time- 4:30-5.30 pm',
                      style: TextStyle(
                        color: Color(0xff1BE59D),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardWidget(
    String image,
    textcolor,
  ) {
    return Container(
      height: AppSizes.dynamicHeight(context, 0.3),
      width: AppSizes.dynamicWidth(context, 0.8),
      margin: EdgeInsets.only(left: 20.w),
      decoration: BoxDecoration(
        // color: Colors.black,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: AppSizes.dynamicWidth(context, 0.06),
              top: AppSizes.dynamicHeight(context, 0.02),
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Upcoming Sessions',
                style: TextStyle(
                  color: Color(textcolor),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: AppSizes.dynamicWidth(context, 0.06),
              top: AppSizes.dynamicHeight(context, 0.02),
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '03',
                style: TextStyle(
                  color: Color(textcolor),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget notificationCard(context) {
  return Container(
    // width: 450.w,
    // height: 170.h,
    decoration: BoxDecoration(
      color: Color(0xff1BE59D),
      borderRadius: BorderRadius.circular(30.r),
    ),
    // padding: EdgeInsets.symmetric(
    //   horizontal: 18.w,
    //   vertical: 10.h,
    // ),
    // padding: EdgeInsets.only(
    //     left: AppSizes.dynamicWidth(
    //       context,
    //       0.02,
    //     ),
    //     right: AppSizes.dynamicWidth(context, 0.02)),
    margin: EdgeInsets.only(bottom: AppSizes.dynamicHeight(context, 0.04)),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: AppSizes.dynamicHeight(context, 0.15),
          width: AppSizes.dynamicWidth(context, 0.15),
          decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/png/wp2398385 1.png"),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(width: AppSizes.dynamicWidth(context, 0.04)),
        const Text(
          'You have received a tution\n request from Salsabil Murshed',
          maxLines: 2,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}
