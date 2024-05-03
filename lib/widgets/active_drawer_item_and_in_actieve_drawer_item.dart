import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/custom_drawer_item_model.dart';
import '../utils/app_styles.dart';

class InActiveCustomDrawerItem extends StatelessWidget {
  const InActiveCustomDrawerItem({
    super.key,
    required this.customDrawerItemModel,
  });

  final CustomDrawerItemModel customDrawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(customDrawerItemModel.image),
      title: Text(customDrawerItemModel.title,style: AppStyles.styleRegular16(context),),
    );
  }
}
class ActiveCustomDrawerItem extends StatelessWidget {
  const ActiveCustomDrawerItem({
    super.key,
    required this.customDrawerItemModel,
  });

  final CustomDrawerItemModel customDrawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(customDrawerItemModel.image),
      title: Text(customDrawerItemModel.title,style: AppStyles.styleBold16(context),),
      trailing: Container(
        width: 3,
        color: Color(0xff4EB7F2),
      ),

    );
  }
}