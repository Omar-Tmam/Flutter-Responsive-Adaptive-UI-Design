import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/dash_board_desktop_layout.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/dash_board_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
