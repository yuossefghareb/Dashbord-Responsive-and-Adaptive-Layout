import 'package:adaptive_app_parctice/models/item_details_model.dart';
import 'package:adaptive_app_parctice/widgets/item_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
      title: 'Design service',
      color: Color(0xff208CC8),
      amount: '40%',
    ),
    ItemDetailsModel(
      title: 'Design product',
      color: Color(0xff4EB7F2),
      amount: '25%',
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      color: Color(0xff064061),
      amount: '20%',
    ),
    ItemDetailsModel(
      title: 'Other',
      color: Color(0xffE2DECD),
      amount: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(item: e)).toList(),
    );
    //!  prefre using column instead of listview if shirnkwrap is true
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //   return  ItemDetails(item: items[index]);
    // });
  }
}
