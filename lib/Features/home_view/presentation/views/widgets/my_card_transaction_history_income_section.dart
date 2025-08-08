import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/income_section.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/my_cards_and_transaction_history_section.dart';

class MyCardTransactionHistoryIncomeSection extends StatelessWidget {
  const MyCardTransactionHistoryIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardsAndTransactionHistorySection(),
        SizedBox(
          height: 24,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
