// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/BarChart/bar_chart_model.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

Widget barChart() {
  List<charts.Series<BarChartModel, String>> series = [
    charts.Series(
      id: "financial",
      data: data,
      domainFn: (BarChartModel series, _) => series.year,
      measureFn: (BarChartModel series, _) => series.financial,
      colorFn: (BarChartModel series, _) => series.color,
    ),
  ];
  return charts.BarChart(
    series,

    animate: true,
    // defaultInteractions: true,
    // vertical: true,
    // layoutConfig: charts.LayoutConfig(leftMarginSpec: charts.MarginSpec.defaultSpec, topMarginSpec: topMarginSpec, rightMarginSpec: rightMarginSpec, bottomMarginSpec: bottomMarginSpec),
  );
}

Widget dropDown(BuildContext context, String title) {
  return DropdownButton<String>(
    hint: text(context, title, AppSizes.dynamicWidth(context, .007),
        AppColors.greyText),
    underline: Container(),
    isExpanded: true,
    icon: Icon(Icons.keyboard_arrow_down_outlined,
        size: AppSizes.dynamicWidth(context, .015)),
    items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: text(context, value, AppSizes.dynamicWidth(context, .01),
            AppColors.greyText),
      );
    }).toList(),
    onChanged: (_) {},
  );
}

Widget dropDownMobile(BuildContext context, String title) {
  return DropdownButton<String>(
    hint: text(context, title, AppSizes.dynamicWidth(context, .017),
        AppColors.greyText),
    underline: Container(),
    isExpanded: true,
    icon: Icon(Icons.keyboard_arrow_down_outlined,
        size: AppSizes.dynamicWidth(context, .015)),
    items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: text(context, value, AppSizes.dynamicWidth(context, .015),
            AppColors.greyText),
      );
    }).toList(),
    onChanged: (_) {},
  );
}
