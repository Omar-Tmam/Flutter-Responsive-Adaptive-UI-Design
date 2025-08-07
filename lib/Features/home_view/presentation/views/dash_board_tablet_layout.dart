import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/income_section.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/my_cards_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: DashboardMobileLayout()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}


