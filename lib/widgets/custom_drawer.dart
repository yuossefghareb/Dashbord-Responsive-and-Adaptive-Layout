import 'package:adaptive_app_parctice/models/drawer_item_model.dart';
import 'package:adaptive_app_parctice/utils/app_assets.dart';
import 'package:adaptive_app_parctice/widgets/active_and_inactive_item.dart';

import 'package:adaptive_app_parctice/widgets/drawer_item_list_view.dart';
import 'package:adaptive_app_parctice/widgets/user_info.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfo(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemlistView(),
          SliverFillRemaining(
            //!!!!!
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  child: InActiveDrawerItem(
                      item: DrawerItemModel(
                          title: 'Settings', icon: Assets.imagesSettings)),
                ),
                InActiveDrawerItem(
                    item: DrawerItemModel(
                        title: 'Logout', icon: Assets.imagesLogout)),
              ],
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 48)),
        ],
      ),
    );
  }
}
