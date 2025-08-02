import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/app_images.dart';
import 'package:responsive_dashboard/Features/home_view/data/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        spacing: 12,
        children: AllExpensesItemsListView.items.asMap().entries.map(
          (e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: AllExpensesItem(
                isSelected: currentIndex == index,
                itemModel: item,
              ),
            ));
          },
        ).toList());
  }
}
