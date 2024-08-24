import 'package:adaptive_app_parctice/models/transction_model.dart';
import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.model});

  final TransctionModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(model.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(model.date,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA))),
        trailing: Text(model.amount,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: model.isWithdrawal
                  ? const Color(0xffF25E5E)
                  : const Color(0xff7CD87A),
            )),
      ),
    );
  }
}
