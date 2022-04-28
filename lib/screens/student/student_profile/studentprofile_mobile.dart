import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

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
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 526.w,
            height: 780.h,
            decoration: BoxDecoration(
              // color: Colors.amber,
              borderRadius: BorderRadius.circular(30.r),
            ),
            padding: EdgeInsets.only(
              left: 45.w,
              right: 45.w,
              // top: 50.h,
            ),
            // padding: EdgeInsets.symmetric(
            //   vertical: 16.h,
            //   horizontal: 25.w,
            // ),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 631.h,
                  decoration: BoxDecoration(
                    color: AppColors.customGrey,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: EdgeInsets.only(
                    top: 130.h,
                    left: 50.w,
                    right: 50.w,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 38.h,
                            width: 191.w,
                            // padding: const EdgeInsets.only(
                            //   top: 5,
                            //   bottom: 5,
                            // ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Positioned(
                    top: -50.0,
                    right: 0,
                    left: 0,
                    // (background container size) - (circle height / 2)
                    child: Center(
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
                      ),
                    )
                    // CircleAvatar(
                    //   radius: 80.r,
                    //   backgroundImage: const AssetImage(
                    //     "assets/png/wp2398385 1.png",
                    //   ),
                    // ),
                    ),
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


  // Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       bottomNavigationBar: CurvedNavigationBar(
//         key: _bottomNavigationKey,
//         index: _selectedIndex,
//         height: 60.0,
//         items: <Widget>[
//           Container(
//             // margin: EdgeInsets.symmetric(horizontal: 50),
//             width: MediaQuery.of(context).size.width * 0.11,
//             height: MediaQuery.of(context).size.height * 0.05,
//             // decoration: _selectedIndex == 0
//             //     ? BoxDecoration(
//             //         color: Colors.white,
//             //         borderRadius: BorderRadius.circular(50),
//             //         boxShadow: [
//             //           BoxShadow(
//             //             color: Colors.grey.withOpacity(0.5),
//             //             spreadRadius: 5,
//             //             blurRadius: 9,
//             //             offset: Offset(-3, -3), // changes position of shadow
//             //           ),
//             //         ],
//             //       )
//             //     : null,
//             child: Icon(
//               Icons.menu,
//               size: 30,
//               color: _selectedIndex == 0 ? Color(0xff01B489) : Colors.white,
//             ),
//           ),
//           Container(
//               // margin: EdgeInsets.symmetric(horizontal: 50),
//               width: MediaQuery.of(context).size.width * 0.11,
//               height: MediaQuery.of(context).size.height * 0.05,
//               decoration: _selectedIndex == 1
//                   ? BoxDecoration(
//                       color: Colors.white,
//                       // borderRadius: BorderRadius.circular(50),
//                       // boxShadow: [
//                       //   BoxShadow(
//                       //     color: Colors.grey.withOpacity(0.5),
//                       //     spreadRadius: 5,
//                       //     blurRadius: 9,
//                       //     offset: Offset(-3, -3), // changes position of shadow
//                       //   ),
//                       // ],
//                     )
//                   : null,
//               child: Icon(
//                 Icons.chat,
//                 size: 30,
//                 color: _selectedIndex == 1 ? Color(0xff01B489) : Colors.white,
//               )),
//           Container(
//             // margin: EdgeInsets.symmetric(horizontal: 50),
//             width: MediaQuery.of(context).size.width * 0.11,
//             height: MediaQuery.of(context).size.height * 0.05,
//             // decoration: _selectedIndex == 2
//             //     ? BoxDecoration(
//             //         color: Colors.white,
//             //         borderRadius: BorderRadius.circular(50),
//             //         boxShadow: [
//             //           BoxShadow(
//             //             color: Colors.grey.withOpacity(0.5),
//             //             spreadRadius: 5,
//             //             blurRadius: 9,
//             //             offset: Offset(-3, -3), // changes position of shadow
//             //           ),
//             //         ],
//             //       )
//             //     : null,
//             child: Icon(
//               Icons.notifications,
//               size: 30,
//               color: _selectedIndex == 2 ? Color(0xff01B489) : Colors.white,
//             ),
//           ),
//         ],
//         color: Color(0xff01B489),
//         buttonBackgroundColor: Colors.transparent,
//         backgroundColor: Colors.white,
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 300),
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         letIndexChange: (index) => true,
//       ),
//       // body: IndexedStack(index: activeIndex, children: pageList),
//       body: _selectedIndex == 0
//           ? Container(
//               color: Colors.white,
//             )
//           : _selectedIndex == 1
//               ? Container(
//                   margin: EdgeInsets.symmetric(
//                     horizontal: 30.w,
//                   ),
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 10,
//                       ),
//                       text(
//                         context,
//                         "Notifications",
//                         18.sp,
//                         AppColors.customGreen,
//                       ),
//                       Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               text(
//                                 context,
//                                 "Profile",
//                                 20,
//                                 Color(0xff3DDEA5),
//                                 bold: true,
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           profileCard(context),
//                           profileCard(context),
//                           profileCard(context),
//                           profileCard(context),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )
//               : Container(
//                   margin: EdgeInsets.symmetric(
//                     horizontal: 30.w,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 10,
//                       ),
//                       text(
//                         context,
//                         "Notifications",
//                         18.sp,
//                         AppColors.customGreen,
//                       ),
//                       Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               text(
//                                 context,
//                                 "Notification",
//                                 20,
//                                 Color(0xff3DDEA5),
//                                 bold: true,
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           notificationCard(context),
//                           notificationCard(context),
//                           notificationCard(context),
//                           notificationCard(context),
//                           notificationCard(context),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//     );
//   }

//   Widget notificationCard(context) {
//     return Container(
//       width: AppSizes.dynamicWidth(context, 1),
//       height: AppSizes.dynamicHeight(context, 0.1),
//       decoration: BoxDecoration(
//         color: Color(0xff1BE59D),
//         borderRadius: BorderRadius.circular(30.r),
//       ),
//       padding: EdgeInsets.symmetric(
//         horizontal: 18.w,
//         vertical: 10.h,
//       ),
//       margin: EdgeInsets.only(
//         bottom: 10.h,
//         left: 30.w,
//         right: 30.w,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           CircleAvatar(
//             radius: 66.r,
//             backgroundImage: const AssetImage(
//               "assets/png/wp2398385 1.png",
//             ),
//           ),
//           SizedBox(
//             width: 15,
//           ),
//           text(
//             context,
//             "You have received a tution request from \nSalsabil Murshed.",
//             30.sp,
//             AppColors.customBlack,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget profileCard(context) {
//     return Container(
//       width: AppSizes.dynamicWidth(context, 1),
//       height: AppSizes.dynamicHeight(context, 0.1),
//       decoration: BoxDecoration(
//         color: AppColors.customGrey,
//         borderRadius: BorderRadius.circular(10.r),
//       ),
//       padding: EdgeInsets.symmetric(
//         horizontal: 54.w,
//         vertical: 14.h,
//       ),
//       margin: EdgeInsets.only(
//         bottom: 14.h,
//         left: 30.w,
//         right: 30.w,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 66.r,
//                 backgroundImage: const AssetImage(
//                   "assets/png/wp2398385 1.png",
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               text(
//                 context,
//                 "SAKIB ABDULLAH",
//                 40.sp,
//                 AppColors.customBlack,
//                 bold: true,
//               ),
//               text(
//                 context,
//                 "bangladesh University Of Professionals\nAccounting , Finance, English, ICT ",
//                 35.sp,
//                 AppColors.customBlack,
//               ),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 height: 25.h,
//                 width: 146.w,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10.r),
//                 ),
//                 child:
//                     Center(child: text(context, "450/hr", 18.sp, Colors.black)),
//               ),
//               Container(
//                 height: 25.h,
//                 width: 146.w,
//                 decoration: BoxDecoration(
//                   color: AppColors.greenDark,
//                   borderRadius: BorderRadius.circular(10.r),
//                 ),
//                 child: Center(
//                     child: text(context, "Message", 18.sp, Colors.white)),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }





// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';

// class StudentProfileMobile extends StatefulWidget {
//   @override
//   _StudentProfileMobileState createState() => _StudentProfileMobileState();
// }

// class _StudentProfileMobileState extends State<StudentProfileMobile> {
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           key: _bottomNavigationKey,
//           index: 0,
//           height: 60.0,
//           items: <Widget>[
//             Icon(
//               Icons.menu,
//               size: 30,
//               color: Colors.white,
//             ),
//             Icon(
//               Icons.chat,
//               size: 30,
//               color: Colors.white,
//             ),
//             Icon(
//               Icons.notifications,
//               size: 30,
//               color: Colors.white,
//             ),
//           ],
//           color: Color(0xff01B489),
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.white,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//           letIndexChange: (index) => true,
//         ),
//         body: _page == 0
//             ? Container(
//                 color: Colors.amber,
//               )
//             : Container(
//                 color: Colors.blueAccent,
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text(_page.toString(), textScaleFactor: 10.0),
//                       ElevatedButton(
//                         child: Text('Go To Page of index 1'),
//                         onPressed: () {
//                           final CurvedNavigationBarState? navBarState =
//                               _bottomNavigationKey.currentState;
//                           navBarState?.setPage(1);
//                         },
//                       )
//                     ],
//                   ),
//                 ),
//               ));
//   }
// }
