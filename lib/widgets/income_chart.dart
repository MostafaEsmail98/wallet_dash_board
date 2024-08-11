import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int index = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(getPieChartData());
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            index = pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: index == 0 ? 24 : 16,
              value: 40,
              color: const Color(0xff208CC8),
              showTitle: false),
          PieChartSectionData(
              radius: index == 1 ?24 : 16,
              value: 25,
              color: const Color(0xff4EB7F2),
              showTitle: false),
          PieChartSectionData(
              radius: index == 2 ? 24 : 16,
              value: 20,
              color: const Color(0xff064061),
              showTitle: false),
          PieChartSectionData(
              radius: index == 3 ? 24 : 16,
              value: 22,
              color: const Color(0xffE2DECD),
              showTitle: false),
        ]);
  }
}
