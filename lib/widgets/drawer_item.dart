import 'package:adaptive_app_parctice/models/drawer_item_model.dart';
import 'package:adaptive_app_parctice/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, required this.isActive});

  final DrawerItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}
