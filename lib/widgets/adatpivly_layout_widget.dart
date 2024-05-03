import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout});

  final WidgetBuilder mobileLayout,tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return   LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > SizeConfig.desktopBreakPoint) {
        return desktopLayout(context);
      } else if (constrains.maxWidth > SizeConfig.tabletBreakPoint) {
        return tabletLayout(context);
      } else {
        return  mobileLayout(context);
      }
    });
  }
}
