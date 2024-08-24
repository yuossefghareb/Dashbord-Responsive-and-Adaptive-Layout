import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:adaptive_app_parctice/utils/size_config.dart';
import 'package:adaptive_app_parctice/widgets/custom_background_container.dart';
import 'package:adaptive_app_parctice/widgets/detailed_income_chart.dart';
import 'package:adaptive_app_parctice/widgets/income_chart.dart';
import 'package:adaptive_app_parctice/widgets/income_details.dart';
import 'package:adaptive_app_parctice/widgets/range_optaion.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBakgroundContainr(
      child: Column(
        children: [IncomeSectionHeader(), IncomeSectionBody()],
      ),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    //print('width $width');
    return width >= SizeConfig.desktop && width < 1300
        ? const DetailedIncomeChart()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const RangeOptaion(),
      ],
    );
  }
}
