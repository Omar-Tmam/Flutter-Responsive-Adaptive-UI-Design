import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_images.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/drawer_item.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWallet,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}