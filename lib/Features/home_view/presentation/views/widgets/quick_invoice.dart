import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/latest_transaction_section.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          LatestTransactionSection(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
