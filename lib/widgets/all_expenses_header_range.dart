import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';
import '../utils/app_styles.dart';

class AllExpensessHeaderRange extends StatelessWidget {
  const AllExpensessHeaderRange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),

      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: Color(0xffF1F1F1))
      ),
      child: Row(
        children: [
           Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 6,),
          SvgPicture.asset(Assets.imagesArrowDown),
        ],
      ),
    );
  }
}
