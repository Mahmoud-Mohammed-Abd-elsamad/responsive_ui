import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_section_chart_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeSectionChartModel(color: Color(0xff208CC8), title: "Design service", percentage: "40%"),
    IncomeSectionChartModel(color: Color(0xff4EB7F2), title: "Design product", percentage: "25%"),
    IncomeSectionChartModel(color: Color(0xff064061), title: "Product royalti", percentage: "20%"),
     IncomeSectionChartModel(color: Color(0xffE2DECD), title: "Other", percentage: "22%"),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: List.generate(items.length, (index) =>  ListTile(
        contentPadding: EdgeInsets.only(right: 0,left: 15),
        leading: Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              color:  items[index].color,
              shape: BoxShape.circle
          ),
        ),
        title: Text(
          items[index].title,
          style: AppStyles.styleRegular16(context).copyWith(fontSize: 12,fontWeight:FontWeight.w400 ),
        ),
        trailing: Text(
          items[index].percentage,
          style: AppStyles.styleMedium16(context).copyWith(color: Color(0xff208CC8)),
        ),
      )),
    );
  }
}
