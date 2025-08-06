import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(
          textHeader: 'Transaction History',
          widget: Text(
            'See all',
            style: AppStyles.styleMedium16.copyWith(
              color: Color(0xff4EB7F2),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: Color(0xFFAAAAAA),
          ),
        ),
      ],
    );
  }
}
