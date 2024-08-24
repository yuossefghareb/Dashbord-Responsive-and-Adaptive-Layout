
import 'package:adaptive_app_parctice/widgets/custom_drawer.dart';
import 'package:adaptive_app_parctice/widgets/dashbord_mobile_layout.dart';

import 'package:flutter/material.dart';

class DashbordTabletLayout extends StatelessWidget {
  const DashbordTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: DashbordMobileLayout(),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
