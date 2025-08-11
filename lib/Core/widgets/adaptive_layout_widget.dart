import 'dart:developer';

import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('window width = ${constraints.maxWidth}');
        if (constraints.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1430) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
