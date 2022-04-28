import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student%20profile/Studentquiz/quiz.dart';
import 'package:heilo/screens/student%20profile/editProfile.dart/editProfile.dart';
import 'package:heilo/screens/student%20profile/onDemand/on_demand.dart';
import 'package:heilo/screens/student%20profile/student_profile.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import 'dashBoard/dashBoard.dart';
import 'studentInbox/studentInbox.dart';

class StudentProfileWeb extends StatefulWidget {
  const StudentProfileWeb({Key? key}) : super(key: key);

  @override
  State<StudentProfileWeb> createState() => _StudentProfileWebState();
}

class _StudentProfileWebState extends State<StudentProfileWeb> {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return Scaffold(
      backgroundColor: AppColors.greenDark,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            style: SideMenuStyle(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              openSideMenuWidth: 250.w,
              compactSideMenuWidth: 50,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: AppColors.customSkimColor,
              selectedColor: AppColors.customWhite,
              selectedTitleTextStyle: TextStyle(
                color: AppColors.customBlack,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
              selectedIconColor: AppColors.customBlack,
              unselectedIconColor: AppColors.customWhite,
              unselectedTitleTextStyle: TextStyle(
                color: AppColors.customWhite,
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(
                top: 50.h,
                bottom: 80.h,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 46.h,
                  maxWidth: 96.w,
                ),
                child: Image.asset(
                  'assets/png/logoWhite.png',
                ),
              ),
            ),
            footer: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 68.w,
                  height: 98.h,
                  decoration: BoxDecoration(
                    color: AppColors.customWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                  ),
                  child: const Icon(
                    Icons.logout,
                    color: AppColors.greenDark,
                  ),
                ),
                AppSizes.widthBox(context, .006),
                text(
                  context,
                  "Log Out",
                  16.sp,
                  AppColors.customWhite,
                  bold: true,
                ),
              ],
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'On Demand',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Quiz',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icon(Icons.supervisor_account),
              ),
              SideMenuItem(
                priority: 2,
                title: 'DashBoard',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icon(Icons.file_copy_rounded),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Profile',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: Icon(Icons.download),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Edit Profile',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: Icon(Icons.settings),
              ),
              SideMenuItem(
                priority: 5,
                title: 'Inbox',
                onTap: () {
                  page.jumpToPage(5);
                },
                icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                0.0,
                16.r,
                16.r,
                16.r,
              ),
              child: PageView(
                controller: page,
                children: [
                  const OnDemand(),
                  Quizz(),
                  DashBoard(),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    // child: const Center(
                    //   child: Text(
                    //     'Dashboard33',
                    //     style: TextStyle(fontSize: 35),
                    //   ),
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 526.w,
                          height: 740.h,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          padding: EdgeInsets.only(
                            left: 45.w,
                            right: 45.w,
                          ),
                          // padding: EdgeInsets.symmetric(
                          //   vertical: 16.h,
                          //   horizontal: 25.w,
                          // ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              // background image and bottom contents
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 0.0,
                                  ),
                                  Positioned(
                                      top:
                                          150.0, // (background container size) - (circle height / 2)
                                      child: Container(
                                        height: 170.h,
                                        width: 183.w,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/png/wp2398385 1.png",
                                            ),
                                          ),
                                        ),
                                      )
                                      // CircleAvatar(
                                      //   radius: 80.r,
                                      //   backgroundImage: const AssetImage(
                                      //     "assets/png/wp2398385 1.png",
                                      //   ),
                                      // ),
                                      ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.customGrey,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      padding: EdgeInsets.only(
                                        top: 20.h,
                                        left: 50.w,
                                        right: 50.w,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          text(
                                            context,
                                            "Sakib Abdullah",
                                            18.0,
                                            AppColors.greyText,
                                            bold: true,
                                          ),
                                          // textWidget(
                                          //   "Sakib Abdullah",
                                          //   FontWeight.w600,
                                          //   0xff747474,
                                          //   18,
                                          // ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          text(
                                            context,
                                            "Maple Leaf International School and College",
                                            14.0,
                                            AppColors.greyText,
                                          ),
                                          // textWidget(
                                          //   "Maple Leaf International School and College",
                                          //   FontWeight.w300,
                                          //   0xff747474,
                                          //   14,
                                          // ),
                                          SizedBox(
                                            height: 70.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 38.h,
                                                width: 191.w,
                                                // padding: const EdgeInsets.only(
                                                //   top: 5,
                                                //   bottom: 5,
                                                // ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      AppColors.customDarkBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: text(
                                                    context,
                                                    "Tutions completed",
                                                    14.0,
                                                    AppColors.customWhite,
                                                    bold: true,
                                                    // alignText: Alignment.center
                                                  ),
                                                ),
                                              ),
                                              text(
                                                context,
                                                "150",
                                                14.0,
                                                AppColors.greytextText,
                                                bold: true,
                                                // alignText: Alignment.center
                                              ),
                                              // textWidget(
                                              //   "150",
                                              //   FontWeight.w600,
                                              //   0xff7D7D7D,
                                              //   14,
                                              // ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 191.w,
                                                height: 38.h,
                                                // padding: const EdgeInsets.only(
                                                //   top: 5,
                                                //   bottom: 5,
                                                // ),
                                                decoration: BoxDecoration(
                                                  color: Color(0xffA279E6),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    30,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: text(
                                                    context,
                                                    "Tutors referred",
                                                    14.0,
                                                    AppColors.customWhite,
                                                    bold: true,
                                                    // alignText: Alignment.center
                                                  ),
                                                  // child: textWidget(
                                                  //   "Tutors referred",
                                                  //   FontWeight.w600,
                                                  //   0xffffffff,
                                                  //   14,
                                                  // ),
                                                ),
                                              ),
                                              text(
                                                context,
                                                "150",
                                                14.0,
                                                AppColors.greytextText,
                                                bold: true,
                                                // alignText: Alignment.center
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                          ),
                                          text(
                                              context,
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                              14.0,
                                              AppColors.customBlack,
                                              // bold: true,
                                              // alignText: Alignment.center
                                              maxLines: 8),
                                          // textWidget(
                                          //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                          //   FontWeight.w300,
                                          //   0xff7000000,
                                          //   14,
                                          // ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              // Profile image
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 100.h,
                              right: 45.w,
                            ),
                            child: Column(
                              children: [
                                greyWidget(),
                                SizedBox(
                                  height: 20.h,
                                ),
                                greyWidget1(),
                                SizedBox(
                                  height: 20.h,
                                ),
                                greyWidget2()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  EditProfile(),
                  StudentInbox(),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: AppColors.customWhite,
                  //     borderRadius: BorderRadius.circular(30.r),
                  //   ),
                  //   child: const Center(
                  //     child: Text(
                  //       'Dashboard5',
                  //       style: TextStyle(fontSize: 35),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget greyWidget() {
    return Container(
      width: 974.w,
      height: 163.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      // padding: EdgeInsets.only(
      //   left: 60.w,
      //   right: 60.w,
      //   top: 20.h,
      //   bottom: 20.h,
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 218.w,
            height: 35.h,
            margin: EdgeInsets.only(
              top: 21.h,
              left: 21.w,
            ),
            decoration: BoxDecoration(
                color: Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: text(
                  context, "Basic Information", 18.0, AppColors.customWhite,
                  bold: false),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Address",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "274, sher-e-bangla road, Dhaka- 1209",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 100.w,
                height: 10.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Gender",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Male",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget1() {
    return Container(
      width: 974.w,
      height: 266.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 218.w,
            height: 35.h,
            margin: EdgeInsets.only(
              top: 21.h,
              left: 21.w,
            ),
            decoration: BoxDecoration(
                color: Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: text(
                context,
                "Education",
                18.0,
                AppColors.customWhite,
                bold: false,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Current Institute",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Maple Leaf International School And College",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "class",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Std- VI",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 120.w,
            height: 30.h,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Medium",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "English Medium",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 240.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Background ",
                      14.0,
                      AppColors.greytextText,
                      bold: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 50.w,
                    ),
                    child: text(
                      context,
                      "Science",
                      14.0,
                      AppColors.greytextText,
                      bold: true,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget2() {
    return Container(
      width: 974.w,
      height: 354.h,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.customGrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 114.w,
            height: 35.h,
            margin: EdgeInsets.only(
              left: 35.h,
              top: 40.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.customDarkGreen,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Align(
              alignment: Alignment.center,
              child: text(
                context,
                "Reviews",
                18.0,
                AppColors.customWhite,
                bold: false,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 107.w,
              right: 107.w,
              top: 24.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    listTileWidget(),
                    SizedBox(
                      height: 10.h,
                    ),
                    listTileWidget(),
                    SizedBox(
                      height: 10.h,
                    ),
                    listTileWidget(),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
                SizedBox(
                  width: 28.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const Text(
                          '/4',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          height: 91.h,
                          width: 90.w,
                          margin: EdgeInsets.only(
                            left: 20.w,
                          ),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/png/wp2398385 1.png",
                                ),
                              )),
                        ),
                      ],
                    ),
                    text(
                        context,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        14,
                        AppColors.customBlack,
                        bold: false,
                        maxLines: 2),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget reviewSecondBoxWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        textWidget(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin.",
          FontWeight.w300,
          0xffffffff,
          14,
        ),
        Row(
          children: [
            Container(
              // color: Colors.black,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            const Text(
              '/4',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            CircleAvatar(
              radius: 46.r,
              backgroundImage: const AssetImage(
                "assets/png/wp2398385 1.png",
              ),
            ),
          ],
        ),
        //  textWidget(
        //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Tortor vulputate ut mauris sem. At platea erat diam sed proin.",
        //         FontWeight.w300,
        //         0xffffffff,
        //         14,
        //       ),
      ],
    );
  }

  Widget listTileWidget() {
    return Container(
      width: 241.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          // CircleAvatar(
          //   radius: 26.r,
          //   backgroundImage: const AssetImage(
          //     "assets/png/wp2398385 1.png",
          //   ),
          // ),
          Container(
            height: 33.h,
            width: 33.w,
            margin: EdgeInsets.only(
              top: 5.h,
              bottom: 5.h,
              left: 8.w,
            ),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/png/wp2398385 1.png",
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 5.h,
              bottom: 5.h,
              left: 15.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(
                  context,
                  "Imran Khan",
                  12,
                  AppColors.customBlack,
                  bold: true,
                ),
                text(
                  context,
                  "Class 6, DRMC",
                  12,
                  AppColors.customBlack,
                  bold: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textWidget(
    String text,
    fontWeight,
    color,
    size,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: Color(color),
      ),
    );
  }
}
