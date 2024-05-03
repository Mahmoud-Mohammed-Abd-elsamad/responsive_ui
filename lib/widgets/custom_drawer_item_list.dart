import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/custom_drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerItemList extends StatefulWidget {
  const CustomDrawerItemList({
    super.key,

  });


  final List<CustomDrawerItemModel> items = const [
    CustomDrawerItemModel(image: Assets.imagesDashBoard, title: 'Dashboard'),
    CustomDrawerItemModel(
        image: Assets.imagesTransaction, title: 'My Transaction'),
    CustomDrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    CustomDrawerItemModel(
        image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    CustomDrawerItemModel(
        image: Assets.imagesInvestments, title: 'My Investments'),
  ];

  @override
  State<CustomDrawerItemList> createState() => _CustomDrawerItemListState();
}

class _CustomDrawerItemListState extends State<CustomDrawerItemList> {

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount:widget.items.length,itemBuilder: (context, index) {

      return InkWell(
          onTap:(){
           if(selectedIndex != index){
             selectedIndex = index;
             setState(() {

             });
           }
          },
          child: CustomDrawerItem(customDrawerItemModel: widget.items[index], isActive: selectedIndex == index,));
    });
  }
}
