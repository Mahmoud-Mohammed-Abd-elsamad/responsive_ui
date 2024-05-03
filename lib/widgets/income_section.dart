import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custo_container.dart';
import 'package:responsive_dashboard/widgets/income_section_body.dart';

import 'income_chart_widget.dart';
import 'income_details.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomContainer(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IncomeSectionHeader(),
            IncomeSectionBody()
        ],
        ),
      ),
    );
  }
}
