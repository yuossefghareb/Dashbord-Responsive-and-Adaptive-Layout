import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TrancsactionHistoryHeader extends StatelessWidget {
  const TrancsactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trancsaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'see all',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
