import 'package:adaptive_app_parctice/models/all_expenses_item_model.dart';
import 'package:adaptive_app_parctice/utils/app_assets.dart';
import 'package:adaptive_app_parctice/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class RowAllExpensesItems extends StatefulWidget {
  const RowAllExpensesItems({super.key});

  @override
  State<RowAllExpensesItems> createState() => _RowAllExpensesItemsState();
}

class _RowAllExpensesItemsState extends State<RowAllExpensesItems> {
  int selectedIndex = 0;
  final List items = [
    AllExpensesItemModel(Assets.imagesBalance,
        title: "Balance", price: r"$20.19", data: "April 2022"),
    AllExpensesItemModel(Assets.imagesIncome,
        title: "Income", price: r"$20.19", data: "April 2022"),
    AllExpensesItemModel(Assets.imagesExpenses,
        title: "Expenses", price: r"$20.19", data: "April 2022"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensesItem(
              item: items[0],
              isActive: 0 == selectedIndex,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensesItem(
              item: items[1],
              isActive: 1 == selectedIndex,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensesItem(
              item: items[2],
              isActive: 2 == selectedIndex,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //   // children: items.map((item) {
    //   //   return Expanded(
    //   //       child: AllExpensesItem(item: item));
    //   // }).toList(),
    //   // !!!!!!!!!!!!!!!!
    //   children: items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: InkWell(
    //         onTap: () {
    //           setState(() {
    //             selectedIndex = index;
    //           });
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12.0 : 0),
    //           child: AllExpensesItem(
    //             item: item,
    //             isActive: index == selectedIndex,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }
}
