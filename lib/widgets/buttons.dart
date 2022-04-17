import 'package:flutter/material.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

Widget coloredButton(context, title, color,
    {function = "",
    width = "",
    height = "",
    fontSize = 0.04,
    fontColor = true,
    icon = false,
    iconData}) {
  return GestureDetector(
    onTap: function == "" ? () {} : function,
    child: Container(
      width: width == "" ? AppSizes.dynamicWidth(context, 1) : width,
      height: height == "" ? AppSizes.dynamicHeight(context, .06) : height,
      decoration: color == AppColors.noColor
          ? BoxDecoration(
              color: color,
              border: Border.all(width: 2, color: Colors.white),
            )
          : BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                AppSizes.dynamicWidth(
                  context,
                  1,
                ),
              ),
              border: Border.all(
                color: AppColors.green,
                width: 2,
              ),
            ),
      child: Center(
        child: icon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    iconData,
                    color: Colors.white,
                    size: AppSizes.dynamicWidth(context, .05),
                  ),
                  text(
                    context,
                    title,
                    fontSize,
                    fontColor == true ? Colors.white : Colors.black,
                    bold: true,
                  ),
                ],
              )
            : text(
                context,
                title,
                fontSize,
                fontColor == true ? Colors.white : Colors.black,
                bold: true,
              ),
      ),
    ),
  );
}

Widget retry(context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // LottieBuilder.asset(
        //   "assets/retry.json",
        //   widt dynamicWidth(context, 0.4),
        //   repeat: false,
        // ),
        AppSizes.heightBox(context, 0.02),
        text(context, "Check your internet or try again later", 0.03,
            Colors.white),
        AppSizes.heightBox(context, 0.1),
        coloredButton(
          context,
          "Retry",
          Colors.white,
          width: AppSizes.dynamicWidth(context, .4),
          function: () {},
        ),
      ],
    ),
  );
}
