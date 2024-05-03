import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/custom_drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'active_drawer_item_and_in_actieve_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.customDrawerItemModel,
    required this.isActive,
  });

  final bool isActive;
  final CustomDrawerItemModel customDrawerItemModel;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveCustomDrawerItem(customDrawerItemModel: customDrawerItemModel)
        : InActiveCustomDrawerItem(
            customDrawerItemModel: customDrawerItemModel);
  }
}
