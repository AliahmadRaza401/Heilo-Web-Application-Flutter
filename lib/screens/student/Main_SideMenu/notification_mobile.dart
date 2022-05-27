import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/Main_SideMenu/student_sidemenu_mobile.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';

import '../../../widgets/text_widget.dart';

class NotificationMobile extends StatefulWidget {
  const NotificationMobile({Key? key}) : super(key: key);

  @override
  State<NotificationMobile> createState() => _NotificationMobileState();
}

class _NotificationMobileState extends State<NotificationMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // key: studentScafoldKey,
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
      body: Container(
        
        margin: EdgeInsets.symmetric(
          horizontal: AppSizes.dynamicWidth(context, 0.03),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.dynamicWidth(context, 0.03),
        ),
        decoration: BoxDecoration(
          color: Color(0xffF1F1F1),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text(
                      context,
                      "Notification",
                      AppSizes.dynamicWidth(context, 0.04),
                      Color(0xff3DDEA5),
                      bold: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                notificationCardforMobile(context),
                notificationCardforMobile(context),
                notificationCardforMobile(context),
                notificationCardforMobile(context),
                notificationCardforMobile(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget notificationCardforMobile(context) {
    return Container(
      width: AppSizes.dynamicWidth(context, 0.9),
      height: 60.h,
      decoration: BoxDecoration(
        color: Color(0xffB4F4DD),
        borderRadius: BorderRadius.circular(90.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.dynamicWidth(context, 0.01),
        vertical: 10.h,
      ),
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 90.r,
            backgroundImage: const AssetImage(
              "assets/png/wp2398385 1.png",
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: text(
              context,
              "You have received a tution request from Salsabil Murshed.",
              AppSizes.dynamicWidth(context, 0.03),
              AppColors.customBlack,
            ),
          ),
        ],
      ),
    );
  }
}
