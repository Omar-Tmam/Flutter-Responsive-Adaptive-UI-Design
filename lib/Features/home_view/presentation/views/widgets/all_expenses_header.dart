import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.textHeader, required this.widget});
  final String textHeader;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textHeader,
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        widget
      ],
    );
  }
}
