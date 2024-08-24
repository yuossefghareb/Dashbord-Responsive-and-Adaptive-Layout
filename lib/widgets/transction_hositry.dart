import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:adaptive_app_parctice/widgets/transction_history_listview.dart';
import 'package:adaptive_app_parctice/widgets/transction_histrory_header.dart';
import 'package:flutter/material.dart';

class TransctionHisotry extends StatelessWidget {
  const TransctionHisotry({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TrancsactionHistoryHeader(),
        const SizedBox(height: 16),
        Text('13 Apr 2022',
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA))),
        const SizedBox(height: 16),
        const TransctionHistoryListview(),
      ],
    );
  }
}
