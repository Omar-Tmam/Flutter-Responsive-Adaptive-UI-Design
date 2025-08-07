import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/income_detail_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeDetailModel});
  final IncomeDetailModel incomeDetailModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailModel.title,
        style: AppStyles.styleRegular16.copyWith(
          color: Color(0xFF064060),
        ),
      ),
      trailing: Text(
        incomeDetailModel.value,
        style: AppStyles.styleMedium16.copyWith(
          color: Color(0xFF208CC8),
        ),
      ),
    );
  }
}
