import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income",style: AppStyles.styleSemiBold20(context),),
        Row(children: [
          Text("Monthly",style: AppStyles.styleMedium16(context),),
          SizedBox(width: 18,),
          Transform.rotate(angle: -1.5708,
          child: Icon(Icons.arrow_back_ios_new_outlined))
        ],)
      ],
    );
  }
}
