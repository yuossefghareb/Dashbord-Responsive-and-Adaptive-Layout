import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuikInvoiceHeader extends StatelessWidget {
  const QuikInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick invoice', style: AppStyles.styleSemiBold20(context)),
        const Expanded(child: SizedBox()),
        const CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
