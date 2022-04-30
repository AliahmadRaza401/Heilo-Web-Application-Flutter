// ignore_for_file: prefer_const_constructors

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class BarChartModel {
  String year;
  int financial;
   charts.Color color;

  BarChartModel({
    required this.year,
    required this.financial,
    required this.color,
  });
}


final List<BarChartModel> data = [
    BarChartModel(
      year: "SUNDAY",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Color(0xff01B489)),
    ),
    BarChartModel(
      year: "MONDAY",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Color(0xff01B489))),
    
    BarChartModel(
      year: "TUESDAY",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Color(0xff01B489)),
    ),
    BarChartModel(
      year: "WEDNESDAY",
      financial: 450,
      color: charts.ColorUtil.fromDartColor(Color(0xff01B489)),
    ),
    BarChartModel(
      year: "THURSDAY",
      financial: 630,
      color: charts.ColorUtil.fromDartColor(Color(0xff01B489)),
    ),
    BarChartModel(
      year: "FRIDAY",
      financial: 950,
      color: charts.ColorUtil.fromDartColor(Color(0xff01B489)),
    ),
    BarChartModel(
      year: "SATURDAY",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Color(0xff01B489)),
    ),
  ];



  // final List<BarChartModel> data = [
  //   BarChartModel(
  //     year: "SUNDAY",
  //     financial: 250,
  //     color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
  //   ),
  //   BarChartModel(
  //     year: "MONDAY",
  //     financial: 300,
  //     color: charts.ColorUtil.fromDartColor(Colors.red),
  //   ),
  //   BarChartModel(
  //     year: "TUESDAY",
  //     financial: 100,
  //     color: charts.ColorUtil.fromDartColor(Colors.green),
  //   ),
  //   BarChartModel(
  //     year: "WEDNESDAY",
  //     financial: 450,
  //     color: charts.ColorUtil.fromDartColor(Colors.yellow),
  //   ),
  //   BarChartModel(
  //     year: "THURSDAY",
  //     financial: 630,
  //     color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
  //   ),
  //   BarChartModel(
  //     year: "FRIDAY",
  //     financial: 950,
  //     color: charts.ColorUtil.fromDartColor(Colors.pink),
  //   ),
  //   BarChartModel(
  //     year: "SATURDAY",
  //     financial: 400,
  //     color: charts.ColorUtil.fromDartColor(Colors.purple),
  //   ),
  // ];