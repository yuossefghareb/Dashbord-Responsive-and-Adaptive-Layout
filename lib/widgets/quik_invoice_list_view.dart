import 'package:adaptive_app_parctice/models/user_info_model.dart';
import 'package:adaptive_app_parctice/utils/app_assets.dart';
import 'package:adaptive_app_parctice/widgets/user_info.dart';
import 'package:flutter/material.dart';

class ListViewQuikInvoice extends StatelessWidget {
  ListViewQuikInvoice({super.key});
  final List<UserInfoModel> it = [
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: it
            .map((e) => IntrinsicWidth(
                    child: UserInfo(
                  image: e.image,
                  title: e.title,
                  subtitle: e.subtitle,
                )))
            .toList(),
      ),
    );

    // return SizedBox(
    //   height: 80,  //? text widget with fixed height and svg widget with fixed height
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: 3,
    //       itemBuilder: (context, index) {
    //         return const IntrinsicWidth(
    //           ////!!!!!!
    //           child: UserInfo(
    //             image: Assets.imagesAvatar2,
    //             title: 'Madrani Andi',
    //             subtitle: 'Madraniadi20@gmail',
    //           ),
    //         );
    //       }),
    // );
  }
}
