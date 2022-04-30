import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:heilo/screens/admin/BarChart/bar_chart_model.dart';
Widget barChart(){
  List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        displayName: 'name',
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