
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custo_container.dart';
import 'package:responsive_dashboard/widgets/transaction_history_section.dart';

import 'card_page_view.dart';
import 'custom_dots.dart';
import 'doots_indicator.dart';
import 'my_card.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int pageViewIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      pageViewIndex = pageController.page!.round();
      setState(() {});
      print("hello hello hello");});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: CustomContainer(
        child: Padding(
          padding: const EdgeInsets.only(right: 12,left: 12,bottom: 12,top: 12),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Text(
                "My card",
                style: AppStyles.styleSemiBold20(context),
              ),
              const SizedBox(
                height: 12,
              ),
              CardPageView(
                pageController: pageController,
              ),
              const SizedBox(
                height: 12,
              ),

              DotsIndicator(
                pageViewIndex: pageViewIndex,
              ),
              const Divider(
                height: 40,
                color: Color(0xffF1F1F1),
              ),
              Expanded(child: const TransactionHistorySection())
            ],
          ),
        ),
      ),
    );
  }
}
