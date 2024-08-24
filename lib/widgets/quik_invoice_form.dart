import 'package:adaptive_app_parctice/widgets/custom_button.dart';
import 'package:adaptive_app_parctice/widgets/title_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuikInvoiceForm extends StatelessWidget {
  const QuikInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextfiled(
                  title: 'Customer name', hintText: 'type customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextfiled(
                  title: 'Customer Email', hintText: 'type customer email'),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TitleTextfiled(
                  title: 'item name', hintText: 'type item name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextfiled(title: 'item amount', hintText: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: 'Add more details',
              textColor: Color(0xff4EB7F2),
              bakgroundColor: Color(0xffFAFAFA),
            )),
            SizedBox(width: 16),
            Expanded(
                child: CustomButton(
              title: 'Send Money',
            )),
          ],
        ),
      ],
    );
  }
}
