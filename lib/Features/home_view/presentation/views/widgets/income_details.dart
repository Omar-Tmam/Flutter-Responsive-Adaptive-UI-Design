import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/income_detail_model.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/item_details.dart';

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
      value: '15%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(incomeDetailModel: items[index]);
      },
    );
  }
}
