// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/utils/responsive.dart';

Widget customInputField(BuildContext context, title) {
  return TextField(
    decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffCED1D0)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greenDark),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffCED1D0)),
        ),
        labelText: title,
        labelStyle: TextStyle(
          fontSize: Responsive.isDesktop(context)
              ? 16.sp
              : AppSizes.dynamicWidth(context, 0.03),
        )),
  );
}
