import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFonts(context, baseFont: 16),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
    );
  }



  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFonts(context, baseFont: 16),
      color: Color(0xff064061),
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: Color(0xff064061),
      fontSize: getResponsiveFonts(context, baseFont: 20),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFonts(context, baseFont: 16),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFonts(context, baseFont: 12),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: getResponsiveFonts(context, baseFont: 24),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: getResponsiveFonts(context, baseFont: 14),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: getResponsiveFonts(context, baseFont: 14),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: getResponsiveFonts(context, baseFont: 16),
      fontWeight: FontWeight.w800,
      fontFamily: "Montserrat",
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: getResponsiveFonts(context, baseFont: 20),
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
    );
  }
}

double getResponsiveFonts(BuildContext context, {required baseFont}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFont = baseFont * scaleFactor;
  double lowerLimit = baseFont * .4; //.8
  double upperLimit = baseFont * .8; //1.2
  // print("scaleFactore => $scaleFactore responsiveFont => $responsiveFont lowerFont => $lowerLimit  upperFont => $upperLimit responsiveFont  ${responsiveFont.clamp(lowerLimit, upperLimit)}");
  return responsiveFont.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // width / selected platform

  if (MediaQuery.sizeOf(context).width < SizeConfig.tabletBreakPoint) {
    return (MediaQuery.sizeOf(context).width / 550);
  } else if (MediaQuery.sizeOf(context).width < SizeConfig.desktopBreakPoint) {
    return (MediaQuery.sizeOf(context).width / 850);
  } else {
    return (MediaQuery.sizeOf(context).width / 1220);
  }
}
