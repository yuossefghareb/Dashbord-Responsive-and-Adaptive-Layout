import 'package:adaptive_app_parctice/models/item_details_model.dart';
import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.item});

  final ItemDetailsModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        item.amount,
        style: AppStyles.styleMedium16(context),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: item.color,
          shape: const OvalBorder(),
        ),
      ),
    );
  }
}
