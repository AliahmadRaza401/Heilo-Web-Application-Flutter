import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/utils/config.dart';

Widget customInputField(title) {
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
          fontSize: 16.sp,
        )),
  );
}
