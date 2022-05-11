import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../screens/student/onDemand/onDemand_web.dart';




Widget notificationMobileContainer(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: AppSizes.dynamicWidth(context, 0.9),
        height: 740.h,
        decoration: BoxDecoration(
          color: AppColors.customGrey,
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16.h,
          // horizontal: 25.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                // vertical: 16.h,
                horizontal: 25.w,
              ),
              child: text(
                context,
                "Notifications",
                110.sp,
                Color(0xff3DDEA5),
                bold: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                 width: AppSizes.dynamicWidth(context, 0.8),
                  height: 660.h,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, i) {
                      return notificationCardforall(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget notificationCardforall(context) {
  return Container(
    // width: AppSizes.dynamicWidth(context, 0.8),
    // height: AppSizes.dynamicHeight(context, 0.12),
    decoration: BoxDecoration(
      color: Color(0xffB4F4DD),
      borderRadius: BorderRadius.circular(30.r),
    ),
    padding: EdgeInsets.symmetric(
      horizontal: AppSizes.dynamicWidth(context, 0.02),
      vertical: AppSizes.dynamicHeight(context, 0.01),
    ),
    margin: EdgeInsets.only(bottom: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius:130.r,
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
            90.sp,
            AppColors.customBlack,
          ),
        ),
      ],
    ),
  );
}