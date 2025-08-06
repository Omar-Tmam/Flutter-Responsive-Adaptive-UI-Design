import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/my_cards_page_view.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatefulWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  State<MyCardsAndTransactionHistorySection> createState() =>
      _MyCardsAndTransactionHistorySectionState();
}

class _MyCardsAndTransactionHistorySectionState
    extends State<MyCardsAndTransactionHistorySection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        CustomBackgroundContainer(
          child: Column(
            children: [
              Header(
                textHeader: 'My Card',
                widget: SizedBox(),
              ),
              MyCardsPageView(
                pageController: pageController,
              ),
              SizedBox(
                height: 20,
              ),
              DotsIndicator(
                currentIndex: currentIndex,
              ),
              Divider(
                height: 40,
              ),
              TransactionHistory()
            ],
          ),
        )
      ],
    );
  }
}
