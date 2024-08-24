import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        helperStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
      ),
    );
  }
}
