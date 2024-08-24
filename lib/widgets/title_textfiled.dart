import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:adaptive_app_parctice/widgets/custom_text_fild.dart';
import 'package:flutter/material.dart';

class TitleTextfiled extends StatelessWidget {
  const TitleTextfiled(
      {super.key, required this.title, required this.hintText});

  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFild(
          hintText: hintText,
        ),
      ],
    );
  }
}
