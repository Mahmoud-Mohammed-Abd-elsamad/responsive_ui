import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncomeChartWidget extends StatefulWidget {
  const IncomeChartWidget({super.key});

  @override
  State<IncomeChartWidget> createState() => _IncomeChartWidgetState();
}

class _IncomeChartWidgetState extends State<IncomeChartWidget> {
  int touchSectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
                showTitle: false,
                value: 40,
                color: Color(0xff208CC8),
                radius: touchSectionIndex == 0 ? 50 : 40),
            PieChartSectionData(
                showTitle: false,
                value: 25,
                color: Color(0xff4EB7F2),
                radius: touchSectionIndex == 1 ? 50 : 40),
            PieChartSectionData(
                showTitle: false,
                value: 20,
                color: Color(0xff064061),
                radius: touchSectionIndex == 2 ? 50 : 40),
            PieChartSectionData(
                showTitle: false,
                value: 22,
                color: Color(0xffE2DECD),
                radius: touchSectionIndex == 3 ? 50 : 40),
          ],
          sectionsSpace: 0,
          pieTouchData:
              PieTouchData(touchCallback: (flTouchEvent, pieTouchResponse) {
            setState(() {
              touchSectionIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          }),
        ),
      ),
    );
  }
}
