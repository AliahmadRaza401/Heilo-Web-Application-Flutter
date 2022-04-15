import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../utils/app_routes.dart';
import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

PreferredSizeWidget customAppBar(context, title,
    {color = AppColors.customWhite, icon = false, iconData, iconFunc = ""}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(
      AppSizes().dynamicWidth(context, .14),
    ),
    child: ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AppBar(
          centerTitle: true,
          backgroundColor: color,
          title: text(context, title, 0.05, AppColors.customDarkBlue),
          leading: GestureDetector(
            onTap: () {
              AppRoutes().pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: AppSizes().dynamicHeight(context, .025),
              color: AppColors.customDarkBlue,
            ),
          ),
          elevation: 0,
          actions: [
            icon
                ? InkWell(
                    onTap: iconFunc == "" ? () {} : iconFunc,
                    splashColor: AppColors.customDarkBlue,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes().dynamicWidth(context, .04),
                      ),
                      child: Icon(
                        iconData,
                        color: AppColors.customDarkBlue,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    ),
  );
}
