// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:adaptive_app_parctice/widgets/custom_background_container.dart';
import 'package:adaptive_app_parctice/widgets/my_card_section.dart';
import 'package:adaptive_app_parctice/widgets/transction_hositry.dart';

class MyCardsAndTransctionHistory extends StatelessWidget {
  const MyCardsAndTransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBakgroundContainr(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 32,
          color: Color(0xffF1F1F1),
        ),
        TransctionHisotry(),
      ],
    ));
  }
}
