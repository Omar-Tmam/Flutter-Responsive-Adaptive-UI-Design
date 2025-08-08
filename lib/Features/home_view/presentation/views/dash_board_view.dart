import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/utils/size_config.dart';
import 'package:responsive_dashboard/Core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/dash_board_desktop_layout.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/dash_board_tablet_layout.dart';
import 'package:responsive_dashboard/Features/home_view/presentation/views/widgets/custom_drawer.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu_sharp)),
              backgroundColor: Color(0xfffafafa),
              elevation: 0,
            )
          : null,
      backgroundColor: Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
