import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget topIconAvatar(BuildContext context) {
  return Container(
    // margin: EdgeInsets.symmetric(
    //   horizontal: 30.w,
    //   vertical: 30.h,
    // ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.notifications,
          color: AppColors.greenDark,
          size: 38,
        ),
        AppSizes.widthBox(context, .01),
        CircleAvatar(
          radius: 32.r,
          backgroundColor: AppColors.green,
          child: CircleAvatar(
            radius: 28.r,
            backgroundImage: const AssetImage(
              "assets/png/wp2398385 1.png",
            ),
          ),
        ),
      ],
    ),
  );
}
