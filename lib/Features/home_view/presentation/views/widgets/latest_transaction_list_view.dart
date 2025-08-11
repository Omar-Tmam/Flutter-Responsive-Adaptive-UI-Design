import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_images.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/user_info_model.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesSmileface,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesSmileface2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesSmileface,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
