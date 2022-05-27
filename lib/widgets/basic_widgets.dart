import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/responsive.dart';
import 'package:heilo/widgets/text_widget.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../utils/dynamic_sizes.dart';

class TextBtn extends StatelessWidget {
  String title;
  TextBtn({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context) ? 350.w : 800.w,
      height: Responsive.isDesktop(context) ? 70.h : 40.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: Responsive.isDesktop(context)
            ? BorderRadius.circular(50.r)
            : BorderRadius.circular(180.r),
      ),
      child: text(
          context,
          title,
          Responsive.isDesktop(context)
              ? 24.sp
              : AppSizes.dynamicWidth(context, 0.04),
          Colors.black),
    );
  }
}
