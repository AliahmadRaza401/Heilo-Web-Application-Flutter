import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/onDemand/onDemand_web.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/widgets/text_widget.dart';

Widget notificationContainer(BuildContext context) {
  return Container(
    width: 526.w,
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
            18.sp,
            Color(0xff3DDEA5),
            bold: true,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 460.w,
              height: 660.h,
              child: ListView.builder(
                shrinkWrap: true,
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
  );
}
