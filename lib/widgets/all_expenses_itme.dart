import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_itme_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'active_and_in_active_all_expemses_item.dart';
import 'all_expenses_item_headr.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});

  final bool isActive;

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
          );
  }
}
