import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/income_detail_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeDetailModel> items = [
    IncomeDetailModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40%',
    ),
    IncomeDetailModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeDetailModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeDetailModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: '150%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

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
