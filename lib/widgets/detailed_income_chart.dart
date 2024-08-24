import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
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
          titlePositionPercentageOffset: selected == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: selected == 0 ? null : Colors.white),
          color: const Color(0xff208CC8),
          radius: selected == 0 ? 60 : 50,
          title: selected == 0 ? 'Desing service' : '40%',
          value: 40,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: selected == 1 ? 2 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: selected == 1 ? null : Colors.white),
          color: const Color(0xff4EB7F2),
          radius: selected == 1 ? 60 : 50,
          title: selected == 1 ? 'Desing product' : '25%',
          value: 25,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: selected == 2 ? 1.3 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: selected == 2 ? null : Colors.white),
          color: const Color(0xff064061),
          radius: selected == 2 ? 60 : 50,
          title: selected == 2 ? 'Product royalti' : '20%',
          value: 20,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: selected == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: selected == 3 ? null : Colors.white),
          color: const Color(0xffE2DECD),
          radius: selected == 3 ? 60 : 50,
          title: selected == 3 ? 'Other' : '22%',
          value: 22,
        ),
      ],
    );
  }
}
