import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';

import '../widgets/all_expenses_and_quick_invoice_section.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/income_section.dart';
import '../widgets/my_card_section.dart';
import '../widgets/my_card_section_and_income_section.dart';
import '../widgets/quick_invoice.dart';
import '../widgets/transaction_history_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print("DashBoardDesktopLayout");
    log(MediaQuery.sizeOf(context).width.toString());

    return  const Scaffold(
      body: Row(
        children: [

          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 3,
            child: CustomScrollView(

              slivers: [

                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Expanded(flex:2,child: All_expenses_and_quick_invoice_section()),
                      SizedBox(width: 20,),
                      Expanded(
                          child: Column(
                            children: [
                              Expanded(child: MyCardSectionAndIncomeSection()),
                            ],
                          )),
                    ],
                  ),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
