import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/custom_drawer.dart';

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
        Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
