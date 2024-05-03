
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_itme_model.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_itme.dart';

import '../generated/assets.dart';
import 'active_and_in_active_all_expemses_item.dart';
import 'all_expenses_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
       bool isActive = false;

    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8, right: 20, left: 20, bottom: 16),
            child: AllExpensesHeader(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AllExpensesListView(isActive: isActive,),
          ),
          const SizedBox(height: 12,)
        ],
      ),
    );
  }

}
