import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int touchSectionIndex = -1;

  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              titlePositionPercentageOffset: touchSectionIndex == 0 ? 1.4 : .5,
              title:  touchSectionIndex == 0 ?"Design service 40%" : null,
                showTitle: true,
                value: 40,
                color: Color(0xff208CC8),
                radius: touchSectionIndex == 0 ? 50 : 40),
            PieChartSectionData(
                title:  touchSectionIndex == 1 ?"Design product 25%" : null,
                titlePositionPercentageOffset: touchSectionIndex == 1 ? 2.2 : .5,

                showTitle: true,
                value: 25,
                color: Color(0xff4EB7F2),
                radius: touchSectionIndex == 1 ? 50 : 40),
            PieChartSectionData(
                title:  touchSectionIndex == 2 ? "Product royalti 20%" : null,
                titlePositionPercentageOffset: touchSectionIndex == 2 ? 1.3 : .5,
                showTitle: true,
                value: 20,
                color: Color(0xff064061),
                radius: touchSectionIndex == 2 ? 50 : 40),
            PieChartSectionData(
                title: touchSectionIndex == 3 ? "Other 22%" : null,
                titlePositionPercentageOffset: touchSectionIndex == 3 ? 1.5 : .5,
                showTitle: true,
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
    );;
  }
}