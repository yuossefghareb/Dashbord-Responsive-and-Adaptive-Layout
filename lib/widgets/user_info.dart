import 'package:adaptive_app_parctice/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfo extends StatelessWidget {
  const UserInfo(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            subtitle,
            style: AppStyles.styleRegular16(context),
          ),
        ),
      ),
    );
  }
}
