import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class StudentProfileMobile extends StatefulWidget {
  @override
  _StudentProfileMobileState createState() => _StudentProfileMobileState();
}

class _StudentProfileMobileState extends State<StudentProfileMobile> {
  int _selectedIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // final _indexPage = [Home(), Courses(), Wishlist(), Profile()];

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
          decoration: BoxDecoration(
            // color: Colors.yellow,
            borderRadius: BorderRadius.circular(13.r),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                // width: 526.w,
                // height: 780.h,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                padding: EdgeInsets.only(
                  left: 45.w,
                  right: 45.w,
                  top: 70.h,
                ),
                margin: EdgeInsets.only(
                  // top: 130.h,
                  top: AppSizes.dynamicHeight(context, 0.04),
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      // height: 631.h,
                      decoration: BoxDecoration(
                        color: AppColors.customGrey,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      padding: EdgeInsets.only(
                        // top: 130.h,
                        top: AppSizes.dynamicHeight(context, 0.1),
                        left: 50.w,
                        right: 50.w,
                        bottom: AppSizes.dynamicHeight(context, 0.02),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                            context,
                            "Sakib Abdullah",
                            18.0,
                            AppColors.greyText,
                            bold: true,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          text(
                            context,
                            "Maple Leaf International School and College",
                            14.0,
                            AppColors.greyText,
                          ),
                          SizedBox(
                            height: AppSizes.dynamicHeight(context, 0.03),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: AppSizes.dynamicHeight(context, 0.04),
                                width: AppSizes.dynamicHeight(context, 0.2),
                                decoration: BoxDecoration(
                                  color: AppColors.customDarkBlue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: text(
                                    context,
                                    "Tutions completed",
                                    14.0,
                                    AppColors.customWhite,
                                    bold: true,
                                  ),
                                ),
                              ),
                              text(
                                context,
                                "150",
                                14.0,
                                AppColors.greytextText,
                                bold: true,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: AppSizes.dynamicHeight(context, 0.04),
                                width: AppSizes.dynamicHeight(context, 0.2),
                                // padding: const EdgeInsets.only(
                                //   top: 5,
                                //   bottom: 5,
                                // ),
                                decoration: BoxDecoration(
                                  color: Color(0xffA279E6),
                                  borderRadius: BorderRadius.circular(
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
                            height: AppSizes.dynamicHeight(context, 0.05),
                          ),
                          text(
                            context,
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque facilisis aenean et elementum massa. Egestas tempor viverra adipiscing ipsum, proin nunc vitae ultrices nec. Tellus in viverra pretium feugiat sit interdum ultricies. Facilisi vulputate mauris cras sapien, scelerisque ullamcorper aliquam duis viverra.",
                            65.sp,
                            AppColors.customBlack,
                            maxLines: 8,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                       top: -120.0,
                        right: 0,
                        left: 0,
                        child: Center(
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              // CircleAvatar(
                              //   radius: 190.r,
                              //   backgroundImage: const AssetImage(
                              //     "assets/png/wp2398385 1.png",
                              //   ),
                              // ),
                              Container(
                                height: AppSizes.dynamicHeight(context, 0.30),
                                width: AppSizes.dynamicWidth(context, 0.30),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/png/wp2398385 1.png",
                                    ),
                                  ),
                                ),
                              ),
                                Positioned(
                                top: 40,
                                right: -12,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xffC4C4C4).withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/png/star.png'),
                                      text(
                                        context,
                                        "4.5",
                                        15,
                                        Colors.black,
                                        bold: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   top: -5,
                              //   right: -30,
                              //   child: Container(
                              //     padding: const EdgeInsets.symmetric(
                              //       horizontal: 7,
                              //       vertical: 3,
                              //     ),
                              //     decoration: BoxDecoration(
                              //       color: Color(0xffC4C4C4).withOpacity(0.5),
                              //       borderRadius: BorderRadius.circular(50),
                              //     ),
                              //     child: Row(
                              //       children: [
                              //         Image.asset('assets/png/star.png'),
                              //         text(
                              //           context,
                              //           "4.5",
                              //           65.sp,
                              //           Colors.black,
                              //           bold: true,
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: AppSizes.dynamicHeight(context, 0.05),
                  left: 45.w,
                  right: 45.w,
                ),
                child: Column(
                  children: [
                    greyWidget(),
                    SizedBox(
                      height: 10.h,
                    ),
                    greyWidget1(),
                    SizedBox(
                      height: 10.h,
                    ),
                    greyWidget2()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget greyWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppSizes.dynamicWidth(context, 0.45),
            height: AppSizes.dynamicHeight(context, 0.04),
            margin: EdgeInsets.only(
              top: AppSizes.dynamicHeight(context, 0.01),
              left: AppSizes.dynamicWidth(context, 0.02),
            ),
            decoration: BoxDecoration(
              color: const Color(0xff3DDEA5),
              borderRadius: BorderRadius.circular(130.r),
            ),
            child: Align(
              alignment: Alignment.center,
              child: text(
                context,
                "Basic Information",
                79.sp,
                AppColors.customWhite,
                bold: false,
              ),
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
                  SizedBox(
                    height: 10.h,
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
                  SizedBox(
                    height: 10.h,
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
      // width: 974.w,
      // height: 266.h,
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(10),
      ),
         padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppSizes.dynamicWidth(context, 0.3),
            height: AppSizes.dynamicHeight(context, 0.04),
            margin: EdgeInsets.only(
              top: AppSizes.dynamicHeight(context, 0.01),
              left: AppSizes.dynamicWidth(context, 0.02),
            ),
            decoration: BoxDecoration(
              color: const Color(0xff3DDEA5),
              borderRadius: BorderRadius.circular(90.r),
            ),
            child: Align(
              alignment: Alignment.center,
              child: text(
                context,
                "Education",
                79.sp,
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
                      left: 30.w,
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
                      left: 30.w,
                    ),
                    child: text(
                        context,
                        "Maple Leaf International School And Colleg",
                        11.0,
                        AppColors.greytextText,
                        bold: true,
                        maxLines: 1),
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
                      left: 30.w,
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
                      left: 30.w,
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
                      left: 30.w,
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
                      left: 30.w,
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
                width: 200.w,
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
         padding: EdgeInsets.symmetric(vertical: 30.h),
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
            width: AppSizes.dynamicWidth(context, 0.2),
            height: AppSizes.dynamicHeight(context, 0.04),
            margin: EdgeInsets.only(
              top: AppSizes.dynamicHeight(context, 0.01),
              left: AppSizes.dynamicWidth(context, 0.02),
            ),
            decoration: BoxDecoration(
              color: const Color(0xff3DDEA5),
              borderRadius: BorderRadius.circular(90.r),
            ),
            child: Align(
              alignment: Alignment.center,
              child: text(
                context,
                "Reviews",
                79.sp,
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
            child: Column(
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
                SizedBox(
                  height: AppSizes.dynamicHeight(context, 0.04),
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
                          height: AppSizes.dynamicHeight(context, 0.06),
                          width: AppSizes.dynamicHeight(context, 0.15),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/png/wp2398385 1.png",
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                    text(
                        context,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin.",
                        14,
                        AppColors.customBlack,
                        bold: false,
                        maxLines: 2),
                    SizedBox(
                      height: AppSizes.dynamicHeight(context, 0.02),
                    )
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
            Container(
              height: AppSizes.dynamicHeight(context, 0.15),
              width: AppSizes.dynamicHeight(context, 0.2),
              // margin: EdgeInsets.only(
              //   top: 5.h,
              //   bottom: 5.h,
              //   // left: 2.w,
              // ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/png/wp2398385 1.png",
                  ),
                  fit: BoxFit.contain,
                ),
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
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.only(
        top: AppSizes.dynamicHeight(context, 0.01),
        bottom: AppSizes.dynamicHeight(context, 0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: AppSizes.dynamicHeight(context, 0.07),
            width: AppSizes.dynamicHeight(context, 0.1),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/png/wp2398385 1.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.h,
              bottom: 5.h,
              left: 4.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                text(
                  context,
                  "Imran Khan",
                  75.sp,
                  AppColors.customBlack,
                  bold: true,
                ),
                text(
                  context,
                  "Class 6, DRMC",
                  65.sp,
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
