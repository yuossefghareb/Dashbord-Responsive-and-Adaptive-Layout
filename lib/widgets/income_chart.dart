import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          selected = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xff208CC8),
          radius: selected == 0 ? 60 : 50,
          value: 40,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xff4EB7F2),
          radius: selected == 1 ? 60 : 50,
          value: 25,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xff064061),
          radius: selected == 2 ? 60 : 50,
          value: 20,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xffE2DECD),
          radius: selected == 3 ? 60 : 50,
          value: 22,
        ),
      ],
    );
  }
}
