import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

final GlobalKey<ScaffoldState> teacherScafoldKey = GlobalKey(); // Create a key

class TeacherSideMenuMobile extends StatefulWidget {
  @override
  _TeacherSideMenuMobileState createState() => _TeacherSideMenuMobileState();
}

class _TeacherSideMenuMobileState extends State<TeacherSideMenuMobile> {
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
    return MaterialApp(
      home: Scaffold(
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
        drawer: StudentDrawer(),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _selectedIndex,
          height: 60.0,
          items: <Widget>[
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 50),
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: _selectedIndex == 0
                  ? BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 9,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    )
                  : null,
              child: Icon(
                Icons.chat_rounded,
                size: 30,
                color: _selectedIndex == 0 ? Color(0xff01B489) : Colors.white,
              ),
            ),
            Container(
                // margin: EdgeInsets.symmetric(horizontal: 50),
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: _selectedIndex == 1
                    ? BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 9,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      )
                    : null,
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: _selectedIndex == 1 ? Color(0xff01B489) : Colors.white,
                )),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 50),
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: _selectedIndex == 2
                  ? BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 9,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    )
                  : null,
              child: Icon(
                Icons.notifications,
                size: 30,
                color: _selectedIndex == 2 ? Color(0xff01B489) : Colors.white,
              ),
            ),
          ],
          color: Color(0xff01B489),
          buttonBackgroundColor: Colors.transparent,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        // body: IndexedStack(index: activeIndex, children: pageList),
        body: _selectedIndex == 0
            ? Container(
                color: Colors.white,
              )
            : _selectedIndex == 1
                ? Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    ),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        text(
                          context,
                          "Notifications",
                          18.sp,
                          AppColors.customGreen,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                text(
                                  context,
                                  "Profile",
                                  20,
                                  Color(0xff3DDEA5),
                                  bold: true,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            profileCard(context),
                            profileCard(context),
                            profileCard(context),
                            profileCard(context),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        text(
                          context,
                          "Notifications",
                          18.sp,
                          AppColors.customGreen,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                text(
                                  context,
                                  "Notification",
                                  20,
                                  Color(0xff3DDEA5),
                                  bold: true,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                            notificationCard(context),
                          ],
                        ),
                      ],
                    ),
                  ),
      ),
    );
  }

  Widget notificationCard(context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 1),
      height: AppSizes.dynamicHeight(context, 0.1),
      decoration: BoxDecoration(
        color: Color(0xff1BE59D),
        borderRadius: BorderRadius.circular(30.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 18.w,
        vertical: 10.h,
      ),
      margin: EdgeInsets.only(
        bottom: 10.h,
        left: 30.w,
        right: 30.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 66.r,
            backgroundImage: const AssetImage(
              "assets/png/wp2398385 1.png",
            ),
          ),
          SizedBox(
            width: 15,
          ),
          text(
            context,
            "You have received a tution request from \nSalsabil Murshed.",
            30.sp,
            AppColors.customBlack,
          ),
        ],
      ),
    );
  }

  Widget profileCard(context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 1),
      height: AppSizes.dynamicHeight(context, 0.1),
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 54.w,
        vertical: 14.h,
      ),
      margin: EdgeInsets.only(
        bottom: 14.h,
        left: 30.w,
        right: 30.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 66.r,
                backgroundImage: const AssetImage(
                  "assets/png/wp2398385 1.png",
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              text(
                context,
                "SAKIB ABDULLAH",
                40.sp,
                AppColors.customBlack,
                bold: true,
              ),
              text(
                context,
                "bangladesh University Of Professionals\nAccounting , Finance, English, ICT ",
                35.sp,
                AppColors.customBlack,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 25.h,
                width: 146.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child:
                    Center(child: text(context, "450/hr", 18.sp, Colors.black)),
              ),
              Container(
                height: 25.h,
                width: 146.w,
                decoration: BoxDecoration(
                  color: AppColors.greenDark,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                    child: text(context, "Message", 18.sp, Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
