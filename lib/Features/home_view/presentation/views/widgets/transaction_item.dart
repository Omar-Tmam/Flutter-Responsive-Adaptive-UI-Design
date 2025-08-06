import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16,
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
              color: transactionModel.withdrawl
                  ? Color(0xffF3735E)
                  : Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
