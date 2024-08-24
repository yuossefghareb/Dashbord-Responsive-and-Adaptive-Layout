import 'package:adaptive_app_parctice/widgets/all_expenses_header.dart';
import 'package:adaptive_app_parctice/widgets/custom_background_container.dart';
import 'package:adaptive_app_parctice/widgets/row_all_expenses_items.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  @override
  Widget build(BuildContext context) {
    return const CustomBakgroundContainr(
      padding: 16,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          RowAllExpensesItems(),
        ],
      ),
    );
  }
}

