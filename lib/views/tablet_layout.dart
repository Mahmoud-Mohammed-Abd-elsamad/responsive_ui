import 'package:flutter/cupertino.dart';

import '../widgets/custom_drawer.dart';
import 'dash_board_mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 2,
            child: MobileLayout()),
      ],
    );
  }
}
