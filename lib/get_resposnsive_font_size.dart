import 'package:flutter/cupertino.dart';

class ResponsiveUi{
  ResponsiveUi();

  //double check = 5;

  double  getResponsiveFonts(BuildContext context,{required baseFont}){
    double scaleFactore =  getScaleFactor(context);
    double responsiveFont = baseFont * scaleFactore;
    double lowerLimit = baseFont * .8;
    double upperLimit = baseFont * 1.2;
    print("scaleFactore => $scaleFactore responsiveFont => $responsiveFont lowerFont => $lowerLimit  upperFont => $upperLimit responsiveFont  ${responsiveFont.clamp(lowerLimit, upperLimit)}");
    return responsiveFont.clamp(lowerLimit, upperLimit);
  }

   double getScaleFactor(BuildContext context) {
    // width / selected platform

    if(MediaQuery.sizeOf(context).width < 600){
      return (MediaQuery.sizeOf(context).width / 400);
    }else if(MediaQuery.sizeOf(context).width < 900){
      return (MediaQuery.sizeOf(context).width / 700);
    }else{
      return (MediaQuery.sizeOf(context).width / 1000);
    }
  }


}