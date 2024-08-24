import 'package:adaptive_app_parctice/widgets/my_card.dart';
import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});

 final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
