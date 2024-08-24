import 'package:adaptive_app_parctice/widgets/all_expenses_and_quick_invoice.dart';
import 'package:adaptive_app_parctice/widgets/custom_drawer.dart';
import 'package:adaptive_app_parctice/widgets/income_section.dart';
import 'package:adaptive_app_parctice/widgets/my_cards_and%20transction_history.dart';
import 'package:flutter/material.dart';

class DashbordDesktop extends StatelessWidget {
  const DashbordDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
            flex: 4,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: AllExpensesAndQuickInvoie(),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            MyCardsAndTransctionHistory(),
                            SizedBox(height: 24),
                            Expanded(child: IncomeSection())
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
