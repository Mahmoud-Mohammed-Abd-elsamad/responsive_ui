import 'package:flutter/cupertino.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';
class CardPageView extends StatelessWidget {
   const CardPageView({super.key, required this.pageController});

 final  PageController  pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller:pageController ,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) {
          return MyCard();}));
  }
}
