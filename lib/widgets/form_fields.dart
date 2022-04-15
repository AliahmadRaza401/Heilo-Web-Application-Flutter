import 'package:flutter/material.dart';

import '../utils/config.dart';
import '../utils/constants.dart';
import '../utils/dynamic_sizes.dart';

Widget inputTextField(context, label, myController,
    {function,
    function2,
    password = false,
    white = false,
    icon = false,
    keyboardType = TextInputType.emailAddress,
    dynamic iconData = ""}) {
  return Material(
    color: AppColors.customGrey,
    shadowColor: AppColors.customGrey,
    elevation: 2,
    borderRadius: BorderRadius.circular(AppSizes().dynamicWidth(context, 1)),
    child: TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (function == "")
          ? () {
              return null;
            }
          : function,
      controller: myController,
      textInputAction: TextInputAction.next,
      keyboardType: keyboardType,
      obscureText: password == true ? obscureText : false,
      cursorColor:
          white == true ? AppColors.customWhite : AppColors.customBlack,
      cursorWidth: 2.0,
      cursorHeight: AppSizes().dynamicHeight(context, .03),
      style: TextStyle(
        color: white == true ? AppColors.customWhite : AppColors.customBlack,
        fontSize: AppSizes().dynamicWidth(context, .04),
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: AppColors.customGreen),
        suffixIcon: icon == true
            ? Icon(
                iconData,
                size: AppSizes().dynamicHeight(context, 0.02),
                color: AppColors.customGrey,
              )
            : const SizedBox(),
        hintStyle: TextStyle(
            color:
                white == true ? AppColors.customWhite : AppColors.customGrey),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(AppSizes().dynamicWidth(context, .1)),
          borderSide: BorderSide(
              width: AppSizes().dynamicWidth(context, 0.004),
              color:
                  white == true ? AppColors.customGrey : AppColors.customWhite),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(AppSizes().dynamicWidth(context, 1)),
          borderSide: BorderSide(
              width: AppSizes().dynamicWidth(context, 0.006),
              color:
                  white == true ? AppColors.customGrey : AppColors.customGreen),
        ),
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(AppSizes().dynamicWidth(context, 1)),
          borderSide: BorderSide(
              width: AppSizes().dynamicWidth(context, 0.004),
              color:
                  white == true ? AppColors.customGrey : AppColors.customWhite),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes().dynamicWidth(context, .05),
        ),
      ),
    ),
  );
}

Widget inputTextField3(context, label, myController,
    {function,
    function2,
    password = false,
    white = false,
    icon = false,
    dynamic iconData = ""}) {
  return TextFormField(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: (function == "")
        ? () {
            return null;
          }
        : function,
    controller: myController,
    textInputAction: TextInputAction.next,
    keyboardType: password == true
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
    obscureText: password == true ? obscureText : false,
    cursorColor: white == true ? AppColors.customWhite : AppColors.customBlack,
    cursorWidth: 2.0,
    cursorHeight: AppSizes().dynamicHeight(context, .03),
    style: TextStyle(
      color: white == true ? AppColors.customWhite : AppColors.customBlack,
      fontSize: AppSizes().dynamicWidth(context, .04),
    ),
    maxLines: 5,
    decoration: InputDecoration(
      filled: true,
      fillColor: AppColors.customWhite,
      suffixIcon: icon == true
          ? Icon(
              iconData,
              size: AppSizes().dynamicHeight(context, 0.02),
              color: AppColors.customGrey,
            )
          : const SizedBox(),
      hintStyle: TextStyle(
          color: white == true ? AppColors.customWhite : AppColors.customGrey),
      enabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppSizes().dynamicWidth(context, .01)),
        borderSide: BorderSide(
            width: AppSizes().dynamicWidth(context, 0),
            color:
                white == true ? AppColors.customWhite : AppColors.customGrey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppSizes().dynamicWidth(context, .01)),
        borderSide: BorderSide(
            width: AppSizes().dynamicWidth(context, 0.004),
            color:
                white == true ? AppColors.customWhite : AppColors.customBlue),
      ),
      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppSizes().dynamicWidth(context, 0.01)),
        borderSide: BorderSide(
            width: AppSizes().dynamicWidth(context, 0),
            color:
                white == true ? AppColors.customWhite : AppColors.customGrey),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppSizes().dynamicWidth(context, .05),
        vertical: AppSizes().dynamicWidth(context, .025),
      ),
    ),
  );
}
