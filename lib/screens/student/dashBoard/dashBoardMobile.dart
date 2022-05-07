import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class DashBoardMobile extends StatefulWidget {
  const DashBoardMobile({Key? key}) : super(key: key);

  @override
  State<DashBoardMobile> createState() => _DashBoardMobileState();
}

class _DashBoardMobileState extends State<DashBoardMobile> {
  int selectedcard = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: studentScafoldKey,
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
                studentScafoldKey.currentState!.openDrawer();
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
      drawer: StudentDrawer(),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: AppSizes.dynamicWidth(context, 1),
                height: AppSizes.dynamicHeight(context, 0.3),
                // color: Colors.yellow,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedcard = 1;
                            });
                          },
                          child: cardWidget('assets/png/g1.png', 0xff000000,'Upcoming Sessions')),
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedcard = 2;
                            });
                          },
                          child: cardWidget('assets/png/g2.png', 0xff000000,'Tutions completed')),
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedcard = 3;
                            });
                          },
                          child: cardWidget('assets/png/g3.png', 0xff000000,'Quiz Appeared')),
                      InkWell(
                          onTap: () {
                            setState(() {
                              selectedcard = 4;
                            });
                          },
                          child: cardWidget('assets/png/g4.png', 0xff000000,"Favourite Tutors")),
                    ]),
              ),
              SizedBox(
                height: 20.h,
              ),
              selectedcard == 1
                  ? upcommingMainSession()
                  : tutionRequest() ,
              notificationMain(),
            ],
          ),
        ),
      ),
    );
  }


 Widget cardWidget(
    String image,
    textcolor,
    String text
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
              child: Text(text
               ,
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

 
  Widget upcommingMainSession() {
    return Container(
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
                color: Colors.white, borderRadius: BorderRadius.circular(21)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Upcoming Sessions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 90.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
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
          upcomingsessionData(),
        ],
      ),
    );
  }


   Widget tutionRequestInnerWidget() {
    return Container(
      margin: EdgeInsets.only(left: 40.w, right: 40.w, top: 30.h),
    
      child: Row(
        children: [
          CircleAvatar(
            radius: 26.r,
            backgroundImage: const AssetImage(
              "assets/png/wp2398385 1.png",
            ),
          ),
          Container(
            width: 30.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(context, 'Ruhul Tusar', 16.sp, Color(0xff444F55),
                  bold: true),
              Container(
                height: 6.w,
              ),
              text(context, 'Class- 10', 15.sp, Color(0xff444F55), bold: false)
            ],
          ),
          Container(
            width: 30.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(context, 'Date : 10-22 -2021   I   5:30 pm', 13.sp,
                  Color(0xff01B489),
                  bold: true),
              Container(
                height: 6.w,
              ),
              text(context, 'Polygons I Gerometry I Maths B', 15.sp,
                  Color(0xff444F55),
                  bold: false)
            ],
          ),
          Expanded(child: Container()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.cancel,
                color: Color(0xffD7443E),
                size: 25,
              ),
              const Icon(
                Icons.check_circle,
                color: Color(0xff3BB54A),
                size: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tutionRequest() {
    return Container(
      height: 573.h,
      width: 743.w,

      // margin: EdgeInsets.only(top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF8F8F8),

      ),
      padding: EdgeInsets.only(bottom: 20.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, left: 20.w),
              alignment: Alignment.centerLeft,
              width: 300.w,
              // decoration: BoxDecoration(
              //     color: Colors.white, borderRadius: BorderRadius.circular(21)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Upcoming Sessions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            tutionRequestInnerWidget(),
           Container(
                   margin: EdgeInsets.only(left: 40.w, right: 40.w,),
             child: const Divider(
               thickness: 1.5,
               color: Color(0xffE9E9E9),
              ),
           ),
            tutionRequestInnerWidget(),
             Container(
                   margin: EdgeInsets.only(left: 40.w, right: 40.w,),
             child: const Divider(
               thickness:1.5,
               color: Color(0xffE9E9E9),
              ),
           ),
            tutionRequestInnerWidget(),
             Container(
                   margin: EdgeInsets.only(left: 40.w, right: 40.w,),
             child: const Divider(
               thickness:1.5,
               color: Color(0xffE9E9E9),
              ),
           ),
            tutionRequestInnerWidget(),
             Container(
                   margin: EdgeInsets.only(left: 40.w, right: 40.w,),
             child: const Divider(
               thickness:1.5,
               color: Color(0xffE9E9E9),
              ),
           ),
            tutionRequestInnerWidget(),
             Container(
                   margin: EdgeInsets.only(left: 40.w, right: 40.w,),
             child: const Divider(
               thickness: 1.5,
               color: Color(0xffE9E9E9),
              ),
           ),
            tutionRequestInnerWidget(),
           
          ],
        ),
      ),
    );
  }




  Widget notificationMain() {
    return Container(
      margin: EdgeInsets.only(top: AppSizes.dynamicHeight(context, 0.1)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xffF8F8F8),
        ),
        padding: EdgeInsets.only(
          left: AppSizes.dynamicWidth(context, 0.04),
          right: AppSizes.dynamicWidth(context, 0.04),
          top: AppSizes.dynamicHeight(context, 0.01),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              context,
              "Notifications",
              18.0,
              AppColors.customGreen,
              bold: false,
            ),
            SizedBox(
              height: 20.h,
            ),
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
            notificationCard(),
          ],
        ),
      ),
    );
  }



  Widget notificationCard() {
    return Container(
      height: AppSizes.dynamicHeight(context, 0.09),
      decoration: BoxDecoration(
        color: Color(0xff1BE59D),
        // color: Colors.black,
        borderRadius: BorderRadius.circular(120.r),
      ),
      margin: EdgeInsets.only(bottom: AppSizes.dynamicHeight(context, 0.04)),
      child: Row(
        children: [
          SizedBox(width: AppSizes.dynamicWidth(context, 0.02)),
          Container(
            height: AppSizes.dynamicHeight(context, 0.07),
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
          Text(
            'You have received a tution \nrequest from Salsabil Murshed ',
            maxLines: 4,
            style: TextStyle(
              color: Colors.black,
              fontSize: 65.sp,
            ),
          ),
        ],
      ),
    );
  }
}
