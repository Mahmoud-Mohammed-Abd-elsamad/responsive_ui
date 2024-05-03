import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textColor, required this.backGroundColor});

  final String text;
  final Color textColor;
  final Color backGroundColor;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Center(child: Text(text,style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),)),
    );
  }
}
