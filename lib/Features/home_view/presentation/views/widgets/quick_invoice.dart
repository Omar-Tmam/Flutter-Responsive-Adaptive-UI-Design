import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/latest_transaction_list_view.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          Header(
            textHeader: 'Quick invoice',
            widget: CircleAvatar(
              backgroundColor: Color(0xFFFAFAFA),
              child: Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          LatestTransactionListView(),
        ],
      ),
    );
  }
}
