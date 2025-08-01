import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title,
      style: AppStyles.styleMedium16,
      ),
      
    );
  }
}
