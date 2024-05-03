
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class All_expenses_and_quick_invoice_section extends StatelessWidget {
  const All_expenses_and_quick_invoice_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20,),
        AllExpenses(),
        SizedBox(height: 12,),
        QuickInvoice()

      ],
    );
  }
}
