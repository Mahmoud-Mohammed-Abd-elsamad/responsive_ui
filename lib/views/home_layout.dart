import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dash_borad_desktop_layout.dart';
import 'package:responsive_dashboard/views/tablet_layout.dart';
import 'package:responsive_dashboard/widgets/adatpivly_layout_widget.dart';

import 'dash_board_mobile_layout.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return  AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout()
      ,
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (BuildContext context) =>  const DashBoardDesktopLayout(),
      
    );
  }
}


