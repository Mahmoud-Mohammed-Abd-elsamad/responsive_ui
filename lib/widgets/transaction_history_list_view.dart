import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';

import '../utils/app_styles.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionHistoryModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 ', isWithdrawal: true, amount: r'$20,129'),
    TransactionHistoryModel(title: 'Landing Page project', date: '13 Apr, 2022 ', isWithdrawal: false, amount: r'$20,129'),
    TransactionHistoryModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 ', isWithdrawal: false, amount: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {

    return Column(
      children: List.generate(items.length, (index) => Expanded(
        child: ListTile(
          title: Text(items[index].title,style: AppStyles.styleSemiBold16(context),maxLines: 1,),
          subtitle: Text(items[index].date,style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),),
          trailing: Text(items[index].amount,style: AppStyles.styleSemiBold20(context).copyWith(color: items[index].isWithdrawal ? Color(0xffF3735E):  Color(0xff7DD97B)),),
        ),
      )),
    );
  }
}
