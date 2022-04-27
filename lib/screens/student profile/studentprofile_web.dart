import 'dart:html';
import 'dart:ui';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student%20profile/editProfile.dart/editProfile.dart';
import 'package:heilo/screens/student%20profile/onDemand/on_demand.dart';
import 'package:heilo/screens/student%20profile/quiz/quiz.dart';
import 'package:heilo/screens/student%20profile/student_profile.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import 'dashBoard/dashBoard.dart';

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
              padding: EdgeInsets.fromLTRB(0.0, 16.r, 16.r, 16.r),
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
                          margin: EdgeInsets.only(left: 150.w),
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
                                    child: CircleAvatar(
                                      radius: 80.r,
                                      backgroundImage: const AssetImage(
                                        "assets/png/wp2398385 1.png",
                                      ),
                                    ),
                                    // child: Container(
                                    //   height: 100.0,
                                    //   width: 100.0,
                                    //   decoration: const BoxDecoration(
                                    //     shape: BoxShape.circle,
                                    //     // color: Colors.green,
                                    //     image: DecorationImage(
                                    //         image: AssetImage(
                                    //             'assets/png/profile.png'),
                                    //         fit: BoxFit.cover),
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
                                          textWidget(
                                            "Sakib Abdullah",
                                            FontWeight.w600,
                                            0xff747474,
                                            18,
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          textWidget(
                                            "Maple Leaf International School and College",
                                            FontWeight.w300,
                                            0xff747474,
                                            14,
                                          ),
                                          SizedBox(
                                            height: 70.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 190.w,
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Color(0xff48A6F0),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: textWidget(
                                                    "Tutions completed",
                                                    FontWeight.w600,
                                                    0xffffffff,
                                                    14,
                                                  ),
                                                ),
                                              ),
                                              textWidget(
                                                "150",
                                                FontWeight.w600,
                                                0xff7D7D7D,
                                                14,
                                              ),
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
                                                width: 190.w,
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Color(0xffA279E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: textWidget(
                                                    "Tutors referred",
                                                    FontWeight.w600,
                                                    0xffffffff,
                                                    14,
                                                  ),
                                                ),
                                              ),
                                              textWidget(
                                                "150",
                                                FontWeight.w600,
                                                0xff7D7D7D,
                                                14,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 60.h,
                                          ),
                                          textWidget(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                                            FontWeight.w300,
                                            0xff7000000,
                                            14,
                                          ),
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
                              right: 150.w,
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
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: const Center(
                      child: Text(
                        'Dashboard5',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
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
      width: 800.w,
      // height: 160.h,
      decoration: BoxDecoration(
          color: AppColors.customGrey, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(
        left: 60.w,
        right: 60.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 230.w,
            // padding: EdgeInsets.only(
            //   top: 5.h,
            //   bottom: 5.h,
            //   right: 5.w,
            //   left: 5.w,
            // ),
            decoration: BoxDecoration(
                color: Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: textWidget(
                "Basic Information",
                FontWeight.w600,
                0xffffffff,
                18,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget(
                "Address",
                FontWeight.w300,
                0xff7d7d7d,
                12,
              ),
              textWidget(
                "Gender",
                FontWeight.w300,
                0xff7d7d7d,
                12,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget(
                "274, sher-e-bangla road, Dhaka- 1209",
                FontWeight.w600,
                0xff7d7d7d,
                14,
              ),
              textWidget(
                "Male",
                FontWeight.w600,
                0xff7d7d7d,
                14,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget1() {
    return Container(
      width: 800.w,
      // height: 260.h,

      decoration: BoxDecoration(
          color: AppColors.customGrey, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(
        left: 60.w,
        right: 60.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 230.w,
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            decoration: BoxDecoration(
                color: Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: textWidget(
                "Education",
                FontWeight.w600,
                0xffffffff,
                18,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget(
                "Current Institute",
                FontWeight.w300,
                0xff7d7d7d,
                12,
              ),
              textWidget(
                "Class",
                FontWeight.w300,
                0xff7d7d7d,
                12,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget(
                "Maple Leaf International School And College",
                FontWeight.w600,
                0xff7d7d7d,
                14,
              ),
              textWidget(
                "Std- VI",
                FontWeight.w600,
                0xff7d7d7d,
                14,
              ),
            ],
          ),
          SizedBox(
            height: 80.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget(
                "Medium",
                FontWeight.w300,
                0xff7d7d7d,
                14,
              ),
              textWidget(
                "Background",
                FontWeight.w300,
                0xff7d7d7d,
                14,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget(
                "English Medium",
                FontWeight.w600,
                0xff7d7d7d,
                14,
              ),
              textWidget(
                "Science",
                FontWeight.w600,
                0xff7d7d7d,
                14,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget greyWidget2() {
    return Container(
      width: 800.w,
      // height: 260.h,

      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.customGrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(
        left: 60.w,
        right: 60.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130.w,
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            decoration: BoxDecoration(
                color: Color(0xff3DDEA5),
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment: Alignment.center,
              child: textWidget(
                "Reviews",
                FontWeight.w600,
                0xffffffff,
                18,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            // width: 250.w,
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.all(10.h),
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    // textWidget(
                    //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin.",
                    //   FontWeight.w300,
                    //   0xffffffff,
                    //   14,
                    // ),
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
      decoration: BoxDecoration(
          color: AppColors.customGrey, borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.only(
        left: 10.w,
        right: 10.w,
        top: 5.h,
        bottom: 5.h,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26.r,
            backgroundImage: const AssetImage(
              "assets/png/wp2398385 1.png",
            ),
          ),
          SizedBox(
            width: 40.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              textWidget(
                "Imran Khan",
                FontWeight.w600,
                0xff616161,
                12,
              ),
              textWidget(
                "Class 6, DRMC",
                FontWeight.w300,
                0xff616161,
                12,
              ),
            ],
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
