import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/transaction_model.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/transaction_item.dart';

class TransacionHistoryListView extends StatelessWidget {
  const TransacionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        withdrawl: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM ',
        amount: r'$2,000',
        withdrawl: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM ',
        amount: r'$20,129',
        withdrawl: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return TransactionItem(transactionModel: items[index]);
    //     });
  }
}
