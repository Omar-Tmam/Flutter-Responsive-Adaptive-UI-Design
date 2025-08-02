import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
