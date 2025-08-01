import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_images.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/drawer_item.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
              image: Assets.imagesSmileface3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
          SizedBox(height: 8),
          DrawerItemsListView()
        ],
      ),
    );
  }
}


