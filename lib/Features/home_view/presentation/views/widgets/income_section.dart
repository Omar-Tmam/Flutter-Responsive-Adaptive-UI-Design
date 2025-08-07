import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/income_details.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/range_options.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          Header(
            textHeader: 'Income',
            widget: RangeOptions(),
          ),
          Row(
            children: [
              Expanded(
                  child: AspectRatio(aspectRatio: 2, child: IncomeChart())),
              Expanded(child: IncomeDetails()),
            ],
          )
        ],
      ),
    );
  }
}
