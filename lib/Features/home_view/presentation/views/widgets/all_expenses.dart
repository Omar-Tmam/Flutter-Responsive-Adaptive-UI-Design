import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(children: [
          AllExpensesHeader(),
        ],),
      ),
    );
  }
}
