import 'package:flutter/cupertino.dart';

class SizeConfig{

  static const desktopBreakPoint = 1002 ;
  static const tabletBreakPoint = 700;


  static late double width, height;


  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }

}