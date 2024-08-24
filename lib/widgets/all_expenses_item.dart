import 'package:adaptive_app_parctice/models/all_expenses_item_model.dart';
import 'package:adaptive_app_parctice/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.item, required this.isActive});

  final AllExpensesItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveExpansesItem(item: item) : InActiveExpansesItem(item: item);
  }
}

