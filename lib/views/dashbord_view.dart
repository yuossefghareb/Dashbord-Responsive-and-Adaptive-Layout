import 'package:adaptive_app_parctice/utils/size_config.dart';
import 'package:adaptive_app_parctice/widgets/adaptive_layout.dart';
import 'package:adaptive_app_parctice/widgets/custom_drawer.dart';
import 'package:adaptive_app_parctice/widgets/dashbord_desktop.dart';
import 'package:adaptive_app_parctice/widgets/dashbord_mobile_layout.dart';
import 'package:adaptive_app_parctice/widgets/dashbord_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashbordView extends StatefulWidget {
  const DashbordView({super.key});

  @override
  State<DashbordView> createState() => _DashbordViewState();
}

class _DashbordViewState extends State<DashbordView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                  setState(() {});
                },
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashbordDesktop(),
        tabletLayout: (context) => const DashbordTabletLayout(),
        mobileLayout: (context) => const DashbordMobileLayout(),
      ),
    );
  }
}
