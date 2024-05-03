
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader( {super.key, required this.icon, required this.image, this.imageColor, this.backgroundColor,
  });

 final  String image,icon ;
 final Color? imageColor,backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding:  const EdgeInsets.all(14),
          height: 50,
          width: 50,
          decoration:  BoxDecoration(
            color:backgroundColor ?? const Color(0xffFAFAFA),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset(image,
          colorFilter: ColorFilter.mode(imageColor??const Color(0xff4EB7F2),  BlendMode.srcIn,)),
        ),
        const Spacer(),
        Transform.rotate(angle: -1.5708 ,
            child: SvgPicture.asset(icon))
      ],
    );
  }
}
