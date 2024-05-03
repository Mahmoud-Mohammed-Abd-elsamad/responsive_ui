import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text("Transaction History",style: AppStyles.styleSemiBold20(context),),
        Text("See all",style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xff4EB7F2)),),
      ],
    );
  }
}
