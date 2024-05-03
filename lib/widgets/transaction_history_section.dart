import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list_view.dart';

import 'income_section.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionHistoryHeader(),
          const SizedBox(height: 12,),
          Text("13 April 2022",style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xffAAAAAA)),),
          const SizedBox(height: 12,),
          Expanded(child: const TransactionHistoryListView()),
        ],
      ),
    );
  }
}

