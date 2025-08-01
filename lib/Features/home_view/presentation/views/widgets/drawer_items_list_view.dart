import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_images.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int actIndex = 0;
  final List<DrawerItemModel> items = [
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
        return GestureDetector(
          onTap: () {
            if (actIndex != index) {
              setState(() {
                actIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
                isActive: actIndex == index, drawerItemModel: items[index]),
          ),
        );
      },
    );
  }
}
