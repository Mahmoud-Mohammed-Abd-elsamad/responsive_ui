import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/generated/assets.dart';

import '../utils/app_styles.dart';
import 'all_expenses_header_range.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      Text(
        "All Expenses",
        style: AppStyles.styleSemiBold20(context),
      ),
      Spacer(),
      AllExpensessHeaderRange(),
    ]);
  }
}

