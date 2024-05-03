import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/custom_drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/active_drawer_item_and_in_actieve_drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../utils/app_styles.dart';
import 'custom_drawer_item.dart';
import 'custom_drawer_item_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width < 600 ? MediaQuery.sizeOf(context).width *.7 : null ,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(left: 28, right: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                image: Assets.imagesAvatar1,
                title: 'Lekan Okeowo',
                subTile: 'demo@gmail.com',
              ),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 27,
            )),
            CustomDrawerItemList(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  InActiveCustomDrawerItem(
                      customDrawerItemModel: CustomDrawerItemModel(
                          image: Assets.imagesSetting,
                          title: "Setting system")),
                  InActiveCustomDrawerItem(
                      customDrawerItemModel: CustomDrawerItemModel(
                          image: Assets.imagesLogout, title: "Logout account")),
                  SizedBox(
                    height: 48,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
