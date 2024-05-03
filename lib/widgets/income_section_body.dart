import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

import 'detaled_income_chart.dart';
import 'income_chart_widget.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return  Row(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex:1,child:width >= SizeConfig.desktopBreakPoint && width <=1343 ?  const Padding(
          padding: EdgeInsets.only(right: 16,top: 16,left: 55,bottom: 16),
          child: DetailedIncomeChart(),
        ): IncomeChartWidget()),
        width  >= SizeConfig.desktopBreakPoint && width <=1343 ? const SizedBox()  : const Expanded(
            flex: 2,
            child:IncomeDetails())
      ],
    );
  }
}

