import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:adaptive_app_parctice/widgets/custom_background_container.dart';
import 'package:adaptive_app_parctice/widgets/quik_invoice_form.dart';
import 'package:adaptive_app_parctice/widgets/quik_invoice_header.dart';
import 'package:adaptive_app_parctice/widgets/quik_invoice_list_view.dart';

import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBakgroundContainr(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuikInvoiceHeader(),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 12),
          ListViewQuikInvoice(),
          const Divider(
            height: 48,
          ),
          const QuikInvoiceForm(),
        ],
      ),
    );
  }
}
