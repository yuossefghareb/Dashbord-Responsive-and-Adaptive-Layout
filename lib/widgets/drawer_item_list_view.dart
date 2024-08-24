import 'package:adaptive_app_parctice/models/drawer_item_model.dart';
import 'package:adaptive_app_parctice/utils/app_assets.dart';
import 'package:adaptive_app_parctice/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemlistView extends StatefulWidget {
  const DrawerItemlistView({
    super.key,
  });

  @override
  State<DrawerItemlistView> createState() => _DrawerItemlistViewState();
}

class _DrawerItemlistViewState extends State<DrawerItemlistView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', icon: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', icon: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', icon: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', icon: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              item: drawerItems[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
