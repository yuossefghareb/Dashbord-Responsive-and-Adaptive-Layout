import 'package:adaptive_app_parctice/models/transction_model.dart';
import 'package:adaptive_app_parctice/widgets/transction_item.dart';
import 'package:flutter/material.dart';

class TransctionHistoryListview extends StatelessWidget {
  const TransctionHistoryListview({super.key});

  static const items = [
    TransctionModel(
        isWithdrawal: true,
        title: 'Cash Withdrawal',
        date: '13 Apr 2022',
        amount: '₹ 5000'),
    TransctionModel(
        isWithdrawal: false,
        title: 'Landing Page project',
        date: '13 Apr 2022',
        amount: '₹ 5000'),
    TransctionModel(
        isWithdrawal: false,
        title: 'Juni Mobile App project',
        date: '13 Apr 2022',
        amount: '₹ 5000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(model: e)).toList(),
    );

    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) => TransctionItem(
    //     model: items[index],
    //   ),
    //   itemCount: items.length,
    // );
  }
}
