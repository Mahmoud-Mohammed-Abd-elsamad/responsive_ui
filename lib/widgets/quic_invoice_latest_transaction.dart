
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../generated/assets.dart';
import 'custom_button.dart';
import 'custom_titled_text_field.dart';
import 'latest_transaction_list_view.dart';

class QuickInvoiceLatestTransaction  extends StatelessWidget {
  const QuickInvoiceLatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Latest Transaction",style: AppStyles.styleMedium16(context),),
        const LatestTransactionListView(),
        const Divider(height: 24,color: Color(0xffF1F1F1),),
        const Row(children:
        [
          Expanded(child: CustomTitledTextField(title: 'Customer name', hintText: 'Type customer name',)),
          SizedBox(width: 16,),
          Expanded(child: CustomTitledTextField(title: 'Customer Email', hintText: 'Type customer email',)),
        ],),
        const SizedBox(height: 12,),
        const Row(children: [
          Expanded(child: CustomTitledTextField(title: 'Customer name', hintText: 'Type customer name',)),
          SizedBox(width: 16,),
          Expanded(child: CustomTitledTextField(title: 'Customer Email', hintText: 'Type customer email',)),
        ],),
        SizedBox(height: 12,),
        const Row(children: [
          Expanded(child: CustomButton(text: 'Add more details', textColor: Color(0xffc4eb7f2), backGroundColor: Colors.white,)),
         SizedBox(width: 16,),
          Expanded(child: CustomButton(text: 'Send Money', textColor: Color(0xffFFFFFF), backGroundColor: Color(0xff4EB7F2),)),
        ],),const SizedBox(height: 24,)

      ],
    );
  }
}

