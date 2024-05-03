import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'income_section.dart';
import 'my_card_section.dart';

class MyCardSectionAndIncomeSection extends StatelessWidget {
  const MyCardSectionAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: MyCardSection()),
         SizedBox(height: 12,),
          IncomeSection(),
      ],
    );
  }
}