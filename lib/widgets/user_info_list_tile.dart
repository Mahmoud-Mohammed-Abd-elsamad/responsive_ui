import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';
import '../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.image, required this.title, required this.subTile});

  final String image,title,subTile;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 1,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title:  Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),subtitle:  Text(subTile,style: AppStyles.styleRegular12(context),),
      ),
    );
  }
}
