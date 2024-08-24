import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RangeOptaion extends StatelessWidget {
  const RangeOptaion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(
              width: 18,
            ),
            Transform.rotate(
                angle: 270 * 3.14 / 180,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF064061),
                )),
          ],
        ),
      ),
    );
  }
}
