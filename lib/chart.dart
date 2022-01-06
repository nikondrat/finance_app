import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinanceChart extends StatelessWidget {
  const FinanceChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 200,
      child: BarChart(BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 10000,
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
              bottomTitles: SideTitles(showTitles: false),
              leftTitles: SideTitles(showTitles: false),
              rightTitles: SideTitles(showTitles: false),
              topTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (context, value) => TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'Sun';
                      case 1:
                        return 'Mon';
                      case 2:
                        return 'Tue';
                      case 3:
                        return 'Wed';
                      case 4:
                        return 'Thu';
                      case 5:
                        return 'Fri';
                      case 6:
                        return 'Sat';
                      default:
                        return '';
                    }
                  })),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(
                y: 6000,
                colors: [Colors.blueAccent],
                width: 10,
              ),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                y: 9000,
                colors: [Colors.blueAccent],
                width: 10,
              ),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                y: 8000,
                colors: [Colors.blueAccent],
                width: 10,
              ),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(
                y: 5000,
                colors: [Colors.blueAccent],
                width: 10,
              ),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(
                y: 6000,
                colors: [Colors.blueAccent],
                width: 10,
              ),
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(
                y: 4000,
                colors: [Colors.blueAccent],
                width: 10,
              ),
            ]),
            BarChartGroupData(x: 6, barRods: [
              BarChartRodData(
                y: 7000,
                colors: [Colors.blueAccent],
                width: 10,
              ),
            ]),
          ])),
    );
  }
}
