import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/all_expenses_and_quick_invoice_section.dart';
import '../widgets/my_card_section_and_income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
        slivers:[

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      All_expenses_and_quick_invoice_section(),
                     Expanded(child: MyCardSectionAndIncomeSection())
                    ],

                  ),
                ),
              ],
            ),
          ),
        ]
    );
  }
}
