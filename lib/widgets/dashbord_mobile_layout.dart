import 'package:adaptive_app_parctice/widgets/income_section.dart';
import 'package:adaptive_app_parctice/widgets/my_cards_and%20transction_history.dart';
import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice.dart';

class DashbordMobileLayout extends StatelessWidget {
  const DashbordMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoie(),
          SizedBox(height: 24),
          MyCardsAndTransctionHistory(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
