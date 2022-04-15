import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../utils/app_routes.dart';
import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget homeButton(context, buttonIcon, text1, {function}) {
  return GestureDetector(
    onTap: function == "" ? () {} : function,
    child: Container(
      width: AppSizes().dynamicWidth(context, .6),
      height: AppSizes().dynamicHeight(context, .08),
      padding: EdgeInsets.only(
        left: AppSizes().dynamicWidth(context, .04),
      ),
      decoration: BoxDecoration(
        color: AppColors.customGrey,
        border: Border.all(color: AppColors.customWhite, width: 2),
        borderRadius: BorderRadius.circular(
          AppSizes().dynamicWidth(context, .04),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            buttonIcon,
            color: AppColors.customDarkBlue,
            size: AppSizes().dynamicHeight(context, .035),
          ),
          AppSizes().widthBox(context, .03),
          text(context, text1, 0.05, AppColors.customDarkBlue, bold: true),
        ],
      ),
    ),
  );
}
