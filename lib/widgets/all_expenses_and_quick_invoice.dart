import 'package:adaptive_app_parctice/widgets/all_expenses.dart';
import 'package:adaptive_app_parctice/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoie extends StatelessWidget {
  const AllExpensesAndQuickInvoie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
